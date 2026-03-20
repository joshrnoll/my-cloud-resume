// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.1.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Josh Noll",
  footer: context { [#emph[Josh Noll -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Feb 2026] ],
  locale-catalog-language: "en",
  page-size: "us-letter",
  page-top-margin: 0.15in,
  page-bottom-margin: 0.15in,
  page-left-margin: 0.5in,
  page-right-margin: 0.5in,
  page-show-footer: false,
  page-show-top-note: false,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 0, 0),
  colors-headline: rgb(0, 0, 0),
  colors-connections: rgb(0, 0, 0),
  colors-section-titles: rgb(0, 0, 0),
  colors-links: rgb(0, 0, 0),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.45em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Courier New",
  typography-font-family-name: "Courier New",
  typography-font-family-headline: "Courier New",
  typography-font-family-connections: "Courier New",
  typography-font-family-section-titles: "Courier New",
  typography-font-size-body: 10.5pt,
  typography-font-size-name: 25pt,
  typography-font-size-headline: 11pt,
  typography-font-size-connections: 11pt,
  typography-font-size-section-titles: 1.2em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: false,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: true,
  links-show-external-link-icon: true,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.35cm,
  header-space-below-headline: 0.08cm,
  header-space-below-connections: 0.1cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: true,
  header-connections-separator: "|",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_full_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.08cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.1em,
  sections-space-between-regular-entries: 0.25em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: false,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0.08cm,
  entries-highlights-bullet:  "◦" ,
  entries-highlights-nested-bullet:  "-" ,
  entries-highlights-space-left: 0cm,
  entries-highlights-space-above: 0.04cm,
  entries-highlights-space-between-items: 0.04cm,
  entries-highlights-space-between-bullet-and-text: 0.3em,
  date: datetime(
    year: 2026,
    month: 2,
    day: 13,
  ),
)


= Josh Noll

#connections(
  [#link("https://joshrnoll.com/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("link")[joshrnoll.com]]],
  [#link("https://linkedin.com/in/joshrnoll", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[linkedin.com\/in\/joshrnoll]]],
  [#link("https://github.com/joshrnoll", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[github.com\/joshrnoll]]],
)
#v(0.5cm)
#connections(
)


== Summary

Cloud\/DevOps Engineer specializing in Kubernetes, infrastructure automation, and secure cloud platforms supporting enterprise and mission environments. Active TS\/SCI clearance; MA in IT Management; CISSP, SecurityX, CCNA certified. Driven to build durable solutions to long-standing pain points, bridging engineering and leadership to deliver measurable outcomes.

== Skills

Azure | AWS | Linux | PowerShell | Bash | Ansible | Python | HTML | CSS | JavaScript | TypeScript | React | Vite | NextJS | Jest | Tailwind | Docker | Kubernetes | Helm | FluxCD | ArgoCD | VMWare | Proxmox | Wireguard | Tailscale | Nginx | Traefik

== Certifications

#link("https://www.credly.com/badges/4df1206d-dc14-4302-83f4-cc5f8e76e2dc/public_url")[CISSP] | #link("https://www.credly.com/badges/218f2074-76ba-4d60-b0d5-5bc83c515052/public_url")[CCNA] | #link("https://learn.microsoft.com/en-us/users/joshrnoll/credentials/A419160A7DC41331?ref=https%3A%2F%2Fjoshrnoll.com%2F")[Az-104] | #link("https://learn.microsoft.com/api/credentials/share/en-us/joshrnoll/B91E76B27D0D2605?sharingId=236C17A9E269164")[Az-900] | #link("https://www.credly.com/badges/ba45cd0c-fe71-4c6f-bfbf-9b8acdeeff9a/public_url")[SecurityX] | #link("https://www.credly.com/badges/76550d7d-a270-421c-8436-b0123897fdf8/public_url")[Security+] | #link("https://www.credly.com/badges/cf3b9100-9b51-488b-84d5-4beb661bee83/public_url")[Network+] | #link("https://www.credly.com/badges/e5ef6d2e-bedd-48c2-a1d0-7b750d418908/public_url")[Project+]

== Experience

  #regular-entry(
  [
    #strong[Infrastructure Engineer], Unstructured (#emph[Feb 2026 – present])

  ],
  [
  ],
  main-column-second-row: [
    - Migrated 8 internal platform applications from Nginx ingress to Traefik, enforcing mTLS authentication across all services to prevent unauthorized cluster access.

    - Prototyping an AI-driven internal documentation site using Docusaurus, FastAPI, ChromaDB and Anthropic\/OpenAI API integrations for RAG, receiving positive feedback from stakeholders in initial demos.

  ],
)

  #regular-entry(
  [
    #strong[Data and Information Systems Engineer], US Army (#emph[Jan 2021 – Jan 2026])

  ],
  [
  ],
  main-column-second-row: [
    - Delivered an AI-powered search solution using Azure AI Search with cross-functional teams, improving accessibility of 22TB+ of data and cutting information retrieval time from 20+ minutes to under 10 seconds.

    - Identified a chronic gap in user account management and built a custom PowerShell module from scratch, increasing service desk ticket closure speed by 100\%.

    - Authored an enterprise cybersecurity policy aligning technical controls with business priorities; secured C-suite buy-in and reduced violations by 75\%+.

    - Designed and presented a tactical network\/systems architecture to 5+ C-suite stakeholders, enabling buy-in for a training event supporting 50+ end users.

    - Deployed resilient Active Directory domain architecture across 8 geographically dispersed sites, maintaining service continuity for 150+ users in austere tactical environments.

  ],
)

  #regular-entry(
  [
    #strong[Executive Assistant], US Army (#emph[Feb 2020 – Jan 2021])

  ],
  [
  ],
  main-column-second-row: [
    - Bridged C-suite leadership and technical teams in drafting and publishing the U.S. Army Arctic Strategy, a foundational initiative driving the Army's return to Arctic dominance amid great power competition.

  ],
)

  #regular-entry(
  [
    #strong[Platoon Leader], US Army (#emph[Mar 2019 – Nov 2020])

  ],
  [
  ],
  main-column-second-row: [
    - Commanded a 22-person Cavalry platoon through a successful combat training center rotation; rated \#1 of all platoon leaders in the squadron; accountable for \$1M+ in equipment.

  ],
)

== Volunteering

  #regular-entry(
  [
    #strong[Director of Programming], Arrowhead Research (#emph[Jan 2026 – present])

  ],
  [
  ],
  main-column-second-row: [
    - Delivered a presentation at a company-sponsored prototype showcase on open-source methodology to a panel of 5 industry experts and DoD leaders including the US Army CTO, demonstrating technical leadership and communication skills.

  ],
)

  #regular-entry(
  [
    #strong[Web Developer], Cybersecurity Canon (#emph[Nov 2025 – present])

  ],
  [
  ],
  main-column-second-row: [
    - Prototyping a modern platform to replace long-deferred WordPress infrastructure; communicating architectural trade-offs to leadership to enable enhanced extensibility.

  ],
)

== Projects

  #regular-entry(
  [
    #strong[#link("https://github.com/joshrnoll/black-relay")[Black Relay]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Full-stack IoT platform built with JavaScript, Express, MQTT, MongoDB. Collects and visualizes real-time sensor data in resource-constrained environments.]

  ],
)

  #regular-entry(
  [
    #strong[#link("https://github.com/joshrnoll/homelab-as-code")[Homelab as Code]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[CD pipeline for homelab services; deploys to Kubernetes on Talos Linux supporting multiple active users via GitOps\/IaC.]

  ],
)

== Education

#strong[Webster University:] MA, Information Technology Management #emph[(May 2022)]

#strong[University of Wisconsin - Eau Claire:] BA, German #emph[(May 2017)]

#strong[Galvanize:] Software Development Immersive #emph[(September 2025)]

#strong[US Army Cyber Center of Excellence (CCOE):] Graduate, Information Systems Engineering Course #emph[(October 2021)]
