// Download PDF function
function downloadPDF() {
  window.open("resume.pdf", "_blank");
}

// Types content to the browser window at a given speed
function typeWriter(elementToType, speedInMilliseconds) {
  let originalHTML = elementToType.innerHTML;
  elementToType.innerHTML = "";
  for (let i = 0; i < originalHTML.length; i++) {
    setTimeout(
      (char) => (elementToType.innerHTML += char),
      i * speedInMilliseconds,
      originalHTML[i],
    );
  }
}

function getElementsWithNoChildren() {
  let allElements = document.querySelectorAll("*");
  let elementsWithNoChildren = [];
  for (item of allElements) {
    if (item.children.length === 0) {
      elementsWithNoChildren.push(item);
    }
  }
  return elementsWithNoChildren;
}

// Only animate the resume content, not the nav bar or status bar
let allHeaders = document.querySelectorAll("main h1, main h2, main h3, main h4");
let allBodyElements = document.querySelectorAll("main a, main span, main p");
let allAccomplishments = document.querySelectorAll("main .accomplishments");

for (item of allHeaders) {
  typeWriter(item, 75);
}

for (item of allBodyElements) {
  if (item.children.length === 0) {
    typeWriter(item, 5);
  }
}

for (item of allAccomplishments) {
  typeWriter(item, 5);
}

// Status bar scroll percentage (mirrors joshrnoll.com's StatusBar)
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
