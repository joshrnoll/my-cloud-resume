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

Passionate, results-driven problem solver with expertise in cloud infrastructure, automation, containerization and system integration. Proven ability to translate technical requirements into customer-centric solutions. Military leader with a history of driving digital transformation, delivering stakeholder-aligned outcomes, and communicating value to both technical and executive audiences.

== Skills

Azure, AWS, Linux, Fedora, Ubuntu, PowerShell, Bash, Ansible, Python, HTML, CSS, JavaScript, TypeScript, React, Vite, NextJS, Jest, Tailwind, Docker, Kubernetes, FluxCD, VMWare, Proxmox, Wireguard, Tailscale, Nginx, Traefik

== Certifications

#strong[ISC2:] #link("https://www.credly.com/badges/4df1206d-dc14-4302-83f4-cc5f8e76e2dc/public_url")[Certified Information Systems Security Professional (CISSP)]

#strong[Cisco:] #link("https://www.credly.com/badges/218f2074-76ba-4d60-b0d5-5bc83c515052/public_url")[Cisco Certified Networking Associate (CCNA)]

#strong[Azure:] #link("https://learn.microsoft.com/en-us/users/joshrnoll/credentials/A419160A7DC41331?ref=https%3A%2F%2Fjoshrnoll.com%2F")[Microsoft Azure Administrator Associate (Az-104)], #link("https://learn.microsoft.com/api/credentials/share/en-us/joshrnoll/B91E76B27D0D2605?sharingId=236C17A9E269164")[Microsoft Azure Fundamentals (Az-900)]

#strong[CompTIA:] #link("https://www.credly.com/badges/ba45cd0c-fe71-4c6f-bfbf-9b8acdeeff9a/public_url")[ComptTIA SecurityX], #link("https://www.credly.com/badges/76550d7d-a270-421c-8436-b0123897fdf8/public_url")[CompTIA Security+], #link("https://www.credly.com/badges/cf3b9100-9b51-488b-84d5-4beb661bee83/public_url")[CompTIA Network+], #link("https://www.credly.com/badges/e5ef6d2e-bedd-48c2-a1d0-7b750d418908/public_url")[CompTIA Project+]

== Experience

#regular-entry(
  [
    #strong[Data and Information Systems Engineer], #emph[US Army]

  ],
  [
    #emph[Jan 2021 – present]

  ],
  main-column-second-row: [
    - Orchestrated and delivered an AI-powered search solution using Azure AI Search in collaboration with cross-functional teams, improving accessibility of over 22TB of data and shortening stakeholder decision-making time by up to 15\%.

    - Developed and drove adoption of a custom PowerShell module for programmatic user account auditing and management, doubling the speed of service desk ticket closures.

    - Recognized upward trend in cybersecurity violations across the organization due to a lack of policy, presenting both the issue and recommendations to C-suite leadership in 3 monthly board meetings.

    - Authored and successfully delivered an enterprise cybersecurity policy by aligning technical controls with business priorities, delivering C-suite buy-in and reducing violations by over 75\%.

    - Championed Windows server upgrades by advising leadership on risk and urgency, resulting in C-suite approval and reduced vulnerabilities on 34+ systems

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

#regular-entry(
  [
    #strong[Platoon Leader], #emph[US Army]

  ],
  [
    #emph[Mar 2019 – Feb 2020]

  ],
  main-column-second-row: [
    - Successfully led a team of 25 through a demanding training and validation process under high-stress conditions, achieving operational readiness. Demonstrated ability to guide cross-functional teams and manage mission-critical projects in a dynamic, high-stakes environment.

    - Led deployment and management of secure communications equipment in dynamic environments, successfully supporting multiple operational and training missions in high stress environments.

  ],
)

== Projects

  #regular-entry(
  [
    #strong[#link("https://github.com/joshrnoll/convoy-connect")[Convoy Connect]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Engineered a full-stack web application that streamlines the vehicle dispatch process by digitizing Preventative Maintenance Checks and Services (PMCS) and automating dispatcher workflows. Shortened vehicle dispatch time from over 3 hours to just a few minutes.]

  ],
)

  #regular-entry(
  [
    #strong[#link("https://resume.joshrnoll.com")[My Cloud Resume]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Designed and developed a dynamic personal resume website from scratch using HTML, CSS, and JavaScript, showcasing technical skills and professional experience. Automated deployment to cloud storage account using GitHub actions, displaying hands-on experience with CI\/CD concepts and tooling.]

  ],
)

  #regular-entry(
  [
    #strong[#link("https://github.com/joshrnoll/homelab-as-code")[Homelab as Code]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Built a CD pipeline for homelab services, rapidly testing and deploying services to Kubernetes on Talos Linux in support of multiple active users. Demonstrated ability to build and document Infrastructure as Code solutions.]

  ],
)

  #regular-entry(
  [
    #strong[#link("https://github.com/joshrnoll/ansible-collection-homelab")[Homelab Ansible Collection]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Published a suite of modular Ansible roles to Ansible Galaxy, enabling repeatable server baselines and deployment of Docker containers onto a Tailscale network. Demonstrated ability to deliver reusable, community-facing infrastructure solutions.]

  ],
)

  #regular-entry(
  [
    #strong[#link("https://github.com/joshrnoll/ansible-playbook-traefik-tailscale")[Traefik Install Playbook]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Delivered a reusable, modular Ansible solution to orchestrate Traefik reverse proxy across multiple environments, showcasing ability to build and communicate repeatable deployment strategies.]

  ],
)

  #regular-entry(
  [
    #strong[#link("https://github.com/joshrnoll/BAT")[Bastogne Automation Tool]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Delivered a scalable, repeatable solution that improved service desk efficiency and user onboarding experience via a custom PowerShell module.]

  ],
)

== Education

#strong[Webster University:] MA, Information Technology Management

#strong[University of Wisconsin - Eau Claire:] BA, German - Liberal Arts

#strong[Galvanize:] Graduate, Software Development Immersive (SDI) Cohort 31

#strong[US Army Cyber Center of Excellence (CCOE):] Graduate, Information Systems Engineering Course
