// Download PDF function
function downloadPDF() {
  window.open("resume.pdf", "_blank");
}

// ---------------------------------------------------------------------------
// Neovim intro (ported from the joshrnoll.com landing page TypingAnimation):
// the resume's markdown source is typed into a Neovim buffer, then `:Preview`
// swaps the editor for the rendered resume. The rendered resume is always in
// the DOM; the intro only runs when <html> has the `nvim-intro` class (set in
// <head> unless prefers-reduced-motion is on). Any key, click/tap, or focus
// moving into the page skips straight to the rendered resume.
// ---------------------------------------------------------------------------
(function () {
  const root = document.documentElement;
  const wrap = document.getElementById("nvim-wrap");
  const content = document.getElementById("nvim-content");
  const tpl = document.getElementById("resume-src");
  const preview = document.getElementById("resume-preview");
  if (!root.classList.contains("nvim-intro") || !wrap || !content || !tpl || !preview) {
    root.classList.remove("nvim-intro");
    return;
  }

  let done = false;
  const sleep = (ms) => new Promise((r) => setTimeout(r, ms));
  const modeEl = document.getElementById("nvim-mode");
  const posEl = document.getElementById("nvim-pos");
  const keysEl = document.getElementById("nvim-keys");

  // Build the buffer: one line per <div> in the template, with line numbers.
  const src = Array.from(tpl.content.querySelectorAll("div")).map((d) => ({
    text: d.textContent.replace(/\s+/g, " ").trim(),
    kind: d.dataset.k || "",
    type: d.dataset.type || "",
  }));
  const lines = src.map((l, i) => {
    const line = document.createElement("div");
    line.className = "nvim-line";
    const ln = document.createElement("span");
    ln.className = "ln";
    ln.textContent = String(i + 1);
    const lc = document.createElement("span");
    lc.className = "lc" + (l.kind ? " k-" + l.kind : "");
    line.append(ln, lc);
    return { el: line, lc, ...l };
  });

  // Lines typed by hand; everything else is "pasted" in after them.
  const typed = lines.filter((l) => l.type);
  const header = lines.slice(0, lines.indexOf(typed[typed.length - 1]) + 1);
  header.forEach((l) => {
    if (!l.type) l.lc.textContent = l.text;
    content.appendChild(l.el);
  });

  function setActive(line) {
    content.querySelectorAll(".nvim-line.active").forEach((e) => e.classList.remove("active"));
    if (!line) return;
    line.el.classList.add("active");
    posEl.textContent = `${lines.indexOf(line) + 1}:1`;
    // keep the cursor line in view inside the buffer
    const pad = parseFloat(getComputedStyle(content).paddingBottom) || 0;
    const top = line.el.offsetTop + line.el.offsetHeight + pad - content.clientHeight;
    if (top > content.scrollTop) content.scrollTop = top;
  }

  function setMode(mode) {
    if (mode === "INSERT") {
      modeEl.textContent = "-- INSERT --";
      modeEl.classList.add("insert");
    } else {
      modeEl.textContent = "NORMAL";
      modeEl.classList.remove("insert");
    }
  }

  async function showKeys(keys, duration = 700) {
    keysEl.textContent = keys;
    await sleep(duration);
    keysEl.textContent = "";
  }

  async function typeText(el, text, speed) {
    for (const ch of text) {
      if (done) return;
      el.textContent += ch;
      await sleep(speed + Math.random() * 10);
    }
  }

  function finish() {
    if (done) return;
    done = true;
    root.classList.remove("nvim-intro");
    wrap.hidden = true;
    preview.classList.add("visible");
    ["keydown", "pointerdown"].forEach((ev) => document.removeEventListener(ev, finish));
    document.removeEventListener("focusin", finish);
  }

  async function run() {
    await sleep(200);
    if (done) return;

    // gg / G, like the landing page
    setActive(lines[0]);
    await showKeys("gg", 200);
    await sleep(60);
    await showKeys("G", 200);
    setActive(header[header.length - 1]);
    await sleep(100);

    for (const line of typed) {
      if (done) return;
      setActive(line);
      await sleep(80);
      await showKeys(line.type, line.type === "ciw" ? 200 : 120);
      setMode("INSERT");
      await typeText(line.lc, line.text, line.kind === "h1" ? 25 : 14);
      await sleep(60);
      setMode("NORMAL");
      await sleep(100);
    }
    if (done) return;

    // `p` in NORMAL mode: paste the rest of the resume source from the
    // register below the cursor line in one go, like a real Neovim paste.
    await showKeys("p", 200);
    if (done) return;
    const rest = lines.slice(header.length);
    const frag = document.createDocumentFragment();
    rest.forEach((line) => {
      line.lc.textContent = line.text;
      frag.appendChild(line.el);
    });
    content.appendChild(frag);
    // cursor lands on the first pasted line; Neovim reports the line count
    setActive(rest[0]);
    keysEl.classList.add("msg");
    keysEl.textContent = `${rest.length} more lines`;
    await sleep(600);
    keysEl.textContent = "";
    keysEl.classList.remove("msg");
    if (done) return;

    // gg, then :Preview
    content.scrollTop = 0;
    setActive(lines[0]);
    await showKeys("gg", 200);
    await sleep(120);
    if (done) return;
    keysEl.textContent = ":Preview";
    await sleep(400);
    keysEl.textContent = "";

    // Fade out editor, fade in rendered resume
    wrap.classList.add("fading-out");
    await sleep(250);
    finish();
  }

  ["keydown", "pointerdown"].forEach((ev) => document.addEventListener(ev, finish, { once: true }));
  document.addEventListener("focusin", finish);
  document.getElementById("nvim-skip").addEventListener("click", finish);
  run();
})();

// Status bar path + scroll percentage (mirrors joshrnoll.com's StatusBar)
const pathEl = document.getElementById("sb-path");
if (pathEl) pathEl.textContent = window.location.pathname;
const scrollEl = document.getElementById("sb-scroll");
function updateScroll() {
  if (!scrollEl) return;
  const total = document.documentElement.scrollHeight - window.innerHeight;
  const pct = total > 0 ? Math.round((window.scrollY / total) * 100) : 100;
  scrollEl.textContent = `${pct}%`;
}
window.addEventListener("scroll", updateScroll, { passive: true });
window.addEventListener("resize", updateScroll);
updateScroll();
