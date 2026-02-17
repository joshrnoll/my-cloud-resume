// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.1.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Josh Noll",
  footer: context { [#emph[Josh Noll -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Feb 2026] ],
  locale-catalog-language: "en",
  page-size: "us-letter",
  page-top-margin: 0.25in,
  page-bottom-margin: 0.25in,
  page-left-margin: 0.25in,
  page-right-margin: 0.25in,
  page-show-footer: false,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 0, 0),
  colors-headline: rgb(0, 0, 0),
  colors-connections: rgb(0, 0, 0),
  colors-section-titles: rgb(0, 0, 0),
  colors-links: rgb(0, 0, 0),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.2em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "XCharter",
  typography-font-family-name: "XCharter",
  typography-font-family-headline: "XCharter",
  typography-font-family-connections: "XCharter",
  typography-font-family-section-titles: "XCharter",
  typography-font-size-body: 10pt,
  typography-font-size-name: 25pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
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
  header-space-below-name: 0.3cm,
  header-space-below-headline: 0.2cm,
  header-space-below-connections: 0.2cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: true,
  header-connections-separator: "|",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_full_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.3cm,
  section-titles-space-below: 0.15cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.1em,
  sections-space-between-regular-entries: 0.3em,
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
  entries-highlights-space-above: 0.08cm,
  entries-highlights-space-between-items: 0.08cm,
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


== Summary

Results-driven Backend Engineer with expertise in cloud infrastructure, API development, and data management. Proven ability to design, implement, and optimize scalable backend solutions. Military leader with a history of driving digital transformation and delivering stakeholder-aligned outcomes.

== Skills

Python, Ansible, Docker, Kubernetes, Azure, AWS, Linux, PowerShell, Bash, JavaScript, TypeScript, Node.js, Express, MongoDB, PostgreSQL, Git, CI\/CD, Flask, VMWare, Proxmox, Wireguard, Tailscale, Nginx, Traefik, HTML, CSS, React, Vite, NextJS, Jest, Tailwind, FluxCD

== Certifications

#strong[ISC2:] #link("https://www.credly.com/badges/4df1206d-dc14-4302-83f4-cc5f8e76e2dc/public_url")[Certified Information Systems Security Professional (CISSP)]

#strong[Cisco:] #link("https://www.credly.com/badges/218f2074-76ba-4d60-b0d5-5bc83c515052/public_url")[Cisco Certified Networking Associate (CCNA)]

#strong[Azure:] #link("https://learn.microsoft.com/en-us/users/joshrnoll/credentials/A419160A7DC41331?ref=https%3A%2F%2Fjoshrnoll.com%2F")[Microsoft Azure Administrator Associate (Az-104)], #link("https://learn.microsoft.com/api/credentials/share/en-us/joshrnoll/B91E76B27D0D2605?sharingId=236C17A9E269164")[Microsoft Azure Fundamentals (Az-900)]

#strong[CompTIA:] #link("https://www.credly.com/badges/ba45cd0c-fe71-4c6f-bfbf-9b8acdeeff9a/public_url")[CompTIA SecurityX], #link("https://www.credly.com/badges/76550d7d-a270-421c-8436-b0123897fdf8/public_url")[CompTIA Security+], #link("https://www.credly.com/badges/cf3b9100-9b51-488b-84d5-4beb661bee83/public_url")[CompTIA Network+], #link("https://www.credly.com/badges/e5ef6d2e-bedd-48c2-a1d0-7b750d418908/public_url")[CompTIA Project+]

== Experience

#regular-entry(
  [
    #strong[Data and Information Systems Engineer], #emph[US Army]

  ],
  [
    #emph[Jan 2021 – present]

  ],
  main-column-second-row: [
    - Designed and delivered an AI-powered search solution using Azure AI Search in collaboration with cross-functional teams, integrating 22TB of data and improving data accessibility.

    - Developed and deployed a custom PowerShell module for programmatic user account auditing and management, significantly increasing service desk efficiency.

    - Championed Windows server upgrades by advising leadership on risk and urgency, resulting in C-suite approval and reduced vulnerabilities on 34+ systems.

    - Designed and presented a tactical network and systems architecture to 5+ C-suite stakeholders, enabling buy-in for a major training event supporting over 50 end users and directly aligning technical innovation with key business objectives.

    - Directed planning and implementation of a robust off-site network connection, advising key stakeholders and delivering reliable connectivity to over 50 users under challenging operational conditions.

  ],
)

#regular-entry(
  [
    #strong[Executive Assistant], #emph[US Army]

  ],
  [
    #emph[Feb 2020 – Jan 2021]

  ],
  main-column-second-row: [
    - Led the successful alignment between C-suite leadership and technical teams in executing critical strategic initiatives, including the U.S. Army Arctic Strategy.

  ],
)

== Volunteering

#regular-entry(
  [
    #strong[Director of Programming], #emph[Arrowhead Research]

  ],
  [
    #emph[Jan 2026 – present]

  ],
  main-column-second-row: [
    - Delivered a presentation at a company-sponsored prototype showcase on open-source methodology to a panel of 5 industry experts and DoD leaders including the US Army CTO, demonstrating technical leadership and communication skills.

  ],
)

#regular-entry(
  [
    #strong[Web Developer], #emph[Cybersecurity Canon]

  ],
  [
    #emph[Nov 2025 – present]

  ],
  main-column-second-row: [
    - Publish weekly book reviews to WordPress-hosted website, supporting content delivery for a curated cybersecurity reading resource.

    - Developing a prototype website platform using modern web technologies to replace WordPress infrastructure, communicating architectural benefits and trade-offs to leadership to enable enhanced extensibility.

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
    #summary[Developed a full-stack IoT platform using JavaScript, Express, MQTT, and MongoDB to collect, process, and visualize real-time sensor data, enabling data-driven decision-making and efficient backend data handling.]

  ],
)

  #regular-entry(
  [
    #strong[#link("https://github.com/joshrnoll/springboot-speedrun")[Springboot Speedrun]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Developed a RESTful API using Java Spring Boot to demonstrate rapid technology adoption and hands-on learning methodology in enterprise Java frameworks, focusing on robust backend service creation.]

  ],
)

  #regular-entry(
  [
    #strong[#link("https://github.com/joshrnoll/convoy-connect")[Convoy Connect]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Engineered a RESTful API using Node.js, Express, and PostgreSQL to streamline vehicle dispatching workflows and demonstrate database design expertise. Collaborated with a cross-functional development team to deliver capstone project for the Galvanize Software Development Immersive.]

  ],
)

  #regular-entry(
  [
    #strong[#link("https://github.com/joshrnoll/ansible-collection-homelab")[Homelab Ansible Collection]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Published a suite of modular Ansible roles to Ansible Galaxy, enabling repeatable server baselines and deployment of Docker containers onto a Tailscale network. Demonstrated ability to deliver reusable, community-facing infrastructure solutions for backend deployments.]

  ],
)

  #regular-entry(
  [
    #strong[#link("https://github.com/joshrnoll/homelab-as-code")[Homelab as Code]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Engineered a GitOps-based CD pipeline using Kubernetes and FluxCD to automate deployment of containerized backend services, demonstrating infrastructure-as-code practices and declarative configuration management for scalable, reliable service delivery.]

  ],
)

  #regular-entry(
  [
    #strong[#link("https://github.com/joshrnoll/my-cloud-resume")[My Cloud Resume]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Built a hybrid resume generation system using Python, Jinja2 templating, and RenderCV to automate dual-format output (HTML\/PDF) from a single YAML data source, with CI\/CD deployment to Azure Blob Storage via Gitea Actions.]

  ],
)

== Education

#strong[Galvanize:] Software Development Immersive (SDI), September 2025

#strong[Webster University:] MA, Information Technology Management, May 2022

#strong[US Army Cyber Center of Excellence (CCOE):] Graduate, Information Systems Engineering Course, October 2021

#strong[University of Wisconsin - Eau Claire:] BA, German - Liberal Arts, May 2017
