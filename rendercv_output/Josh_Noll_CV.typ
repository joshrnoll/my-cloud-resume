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

Army officer and IT professional with active TS\/SCI clearance and 5+ years of hands-on experience architecting and delivering cloud-based solutions in secure federal environments. Proven track record of translating complex technical requirements into scalable architectures, leading technical evaluations, and advising senior stakeholders on solution design. Deep expertise in CI\/CD, DevSecOps, cloud platforms, and infrastructure automation.

== Experience

#regular-entry(
  [
    #strong[Infrastructure Engineer (SkillBridge)], #emph[Unstructured]

  ],
  [
    #emph[Feb 2026 – present]

  ],
  main-column-second-row: [
    - Supporting cloud infrastructure which powers the platform, including Kubernetes orchestration, CI\/CD pipeline optimization, and Infrastructure as Code development.

    - Assisting with infrastructure automation, deployment pipelines, and configuration management to improve platform reliability and delivery velocity.

    - Contributing to documentation, runbooks, and operational knowledge sharing to strengthen team practices.

    - Participating in infrastructure planning discussions and incident reviews to identify delivery improvements and build operational awareness.

  ],
)

#regular-entry(
  [
    #strong[Data and Information Systems Engineer], #emph[US Army]

  ],
  [
    #emph[Jan 2021 – Feb 2026]

  ],
  main-column-second-row: [
    - Architected and delivered an enterprise search solution using Azure Web App Service, Azure AI Search, Azure Data Factory and Azure Data Lake, integrating 22TB of raw data into 2TB of indexed, accessible data and reducing stakeholder data retrieval time from 20+ minutes to seconds.

    - Designed and presented technical solution architectures to 5+ senior stakeholders, translating complex requirements into clear proposals, enabling buy-in and directly aligning technical solutions with mission objectives.

    - Authored and successfully delivered an enterprise cybersecurity policy by aligning technical security controls with mission priorities, achieving senior leadership buy-in and reducing violations by over 75\%.

    - Directed planning and implementation of a robust off-site network connection, advising key stakeholders and delivering reliable connectivity to over 50 users under challenging operational conditions.

    - Installed resilient domain architecture across multiple sites, enabling service uptime and reliability in secure, resource-constrained environments.

    - Developed and drove adoption of a custom PowerShell automation module for programmatic user account auditing and management, doubling the speed of service desk ticket closures.

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
    - Delivered a technical presentation on open-source methodology to a panel of 5 industry experts and DoD leaders including the US Army CTO, demonstrating the ability to lead demos, communicate technical value to senior stakeholders, and advocate for technology adoption.

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
    - Architecting a replacement platform using NextJS and Supabase, presenting architectural trade-offs and migration strategy to leadership to enable enhanced extensibility and self-service capabilities.

  ],
)

== Projects

  #regular-entry(
  [
    #strong[#link("https://github.com/joshrnoll/homelab-as-code")[Homelab as Code]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Architected a GitOps-driven CI\/CD pipeline deploying services to Kubernetes on Talos Linux using FluxCD, Tailscale for secure networking, and SOPS\/age for encrypted secrets management. Demonstrated end-to-end solution design, documentation, and Infrastructure as Code delivery.]

  ],
)

  #regular-entry(
  [
    #strong[#link("https://resume.joshrnoll.com")[My Cloud Resume]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Designed and deployed a cloud-hosted resume website to Azure Blob Storage using HTML, CSS, and JavaScript with automated CI\/CD via GitHub Actions, demonstrating end-to-end solution delivery on a cloud platform.]

  ],
)

  #regular-entry(
  [
    #strong[#link("https://github.com/joshrnoll/black-relay")[Black Relay]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Architected a full-stack IoT platform integrating JavaScript, Express, MQTT, and MongoDB with a CI\/CD pipeline using GitHub Actions to build and deploy container images, enabling data-driven decision-making in resource-constrained environments.]

  ],
)

  #regular-entry(
  [
    #strong[#link("https://github.com/joshrnoll/ansible-collection-homelab")[Homelab Ansible Collection]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Published a suite of modular Ansible roles to Ansible Galaxy, enabling repeatable server baselines and automated deployment of containerized services with Tailscale networking, Traefik reverse proxy and Cloudflare DNS integration.]

  ],
)

== Education

#strong[Webster University:] MA, Information Technology Management, May 2022

#strong[University of Wisconsin - Eau Claire:] BA, German - Liberal Arts, May 2017

#strong[Galvanize:] Software Development Immersive (SDI), September 2025

#strong[US Army Cyber Center of Excellence (CCOE):] Graduate, Information Systems Engineering Course, October 2021

== Skills

Solution Architecture, CI\/CD, DevSecOps, Git, GitOps, Azure, AWS, Kubernetes, Docker, Ansible, Python, PowerShell, Bash, Linux, FluxCD, VMWare, Proxmox, JavaScript, TypeScript, React, NextJS, HTML, CSS, Nginx, Traefik, Wireguard, Tailscale

== Certifications

#strong[ISC2:] #link("https://www.credly.com/badges/4df1206d-dc14-4302-83f4-cc5f8e76e2dc/public_url")[Certified Information Systems Security Professional (CISSP)]

#strong[Cisco:] #link("https://www.credly.com/badges/218f2074-76ba-4d60-b0d5-5bc83c515052/public_url")[Cisco Certified Networking Associate (CCNA)]

#strong[Azure:] #link("https://learn.microsoft.com/en-us/users/joshrnoll/credentials/A419160A7DC41331?ref=https%3A%2F%2Fjoshrnoll.com%2F")[Microsoft Azure Administrator Associate (Az-104)], #link("https://learn.microsoft.com/api/credentials/share/en-us/joshrnoll/B91E76B27D0D2605?sharingId=236C17A9E269164")[Microsoft Azure Fundamentals (Az-900)]

#strong[CompTIA:] #link("https://www.credly.com/badges/ba45cd0c-fe71-4c6f-bfbf-9b8acdeeff9a/public_url")[CompTIA SecurityX], #link("https://www.credly.com/badges/76550d7d-a270-421c-8436-b0123897fdf8/public_url")[CompTIA Security+], #link("https://www.credly.com/badges/cf3b9100-9b51-488b-84d5-4beb661bee83/public_url")[CompTIA Network+], #link("https://www.credly.com/badges/e5ef6d2e-bedd-48c2-a1d0-7b750d418908/public_url")[CompTIA Project+]
