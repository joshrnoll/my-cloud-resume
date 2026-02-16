# I Love Me Doc

This doc is a comprehensive list of my accomplishments, written in plain English, meant to be distilled into a tailored resume.

## Education

### Bachelor of Arts, German, University of Wisconsin, Eau Claire

- Studied German language
- Minored in linguistics
- Member of German honor society - Delta Phi Alpha
- Studied military science as a member of Army ROTC (earned commission in active army as 2nd Lieutenant upon graduation)

### Master of Arts, Information Technology Management, Webster University

- Studied project management, systems analysis and contract management
- Took one elective in cybersecurity

### Galvanize, Software Development Immersive (SDI), Cohort 31 Graduate

- Learned full stack development using JavaScript, Express, React, Node and Postgres.
- Developed several full stack projects including a group capstone project: [Convoy Connect](https://github.com/joshrnoll/convoy-connect)

### US Army Cyber Center of Excellence (CCoE), Information Systems Engineer Course, Graduate

- Studied networking, Microsoft server, Microsoft SQL, SCCM, VMWare virtualization, Linux and AWS cloud

## Work Experience

### Platoon Leader, 1-40th Cavalry Regiment, March 2019 thru February 2020

- Led a cavalry platoon of approximately 20 soldiers through several major training exercises
- Responsible for well over $1 million worth of equipment; no lost or damaged equipment during my time in the position
- Rated as #1 of all platoon leaders throughout the squadron

### Aide de Camp, US Army Alaska, February 2020 thru January 2021

- Selected to be the executive assistant of the Deputy Commanding General
- Handled transition to remote work during COVID, acting as tier 1 helpdesk during adoption of Microsoft Teams
- Coordinated logistics for necessary travel during COVID conditions
- Enabled successful adoption of the US Army Arctic strategy by managing calendars and schedules of several senior leaders.

### Information Systems Engineer, 1BCT 101st Airborne Division, November 2021 thru May 2023

- Communicated necessary network architecture to Brigade leadership for several training exercises; displaying capability to translate complex technical topics to non-technical audiences
- Conducted server upgrades to Microsoft server 2019
- Installed resilient domain architecture across multiple sites, enabling service uptime in austere environments
- Authored a custom powershell module that automated user compliance checking and account creation; resulted in increased service desk efficiency by over 100%
- Planned and implemented the lifecycle of over 750 laptops

### Data Systems Engineer, 3rd Special Forces Group, May 2023 thru February 2026

- Architected and championed an enterprise search application built using Azure Web App Service, Azure AI Search, Azure Data Factory and an Azure gen2 Data Lake. Brought in 22TB of raw data which was indexed to 2TB of usable data. Increased data accessibility -- users reported that data which used to take them over 20 minutes to find, they were able to find in seconds.

- Recognized upward trend in cybersecurity violations. After getting buy-in from leadership, authored and implemented a new cybersecurity policy which enforced standards more aggressively. Reduced the number of active violations from 32 to 7 within one month.

## Side Projects

### Black Relay

[Project Github](https://github.com/joshrnoll/black-relay)

- Wore two hats: backend engineer and devops engineer
- Wrote an express backend that subscribed to MQTT topics and persisted data into MongoDB. Data was wrapped in a custom classification system, allowing end users to make data informed decisions based on alert level.
- Wrote deployment pipeline using github actions to deploy container images to GHCR and deployed to server using docker compose

### Homelab as Code

[Project Github](https://github.com/joshrnoll/homelab-as-code)

- In the process of converting homelab services from docker to kubernetes
- Clusters run on Talos linux with Tailscale for secure remote management
- Tailscale kubernetes operator securely exposes services to Tailnet
- FluxCD used for GitOps
- SOPS and age used for encrypting secret values

### Homelab Ansible Collection

[Project Github](https://github.com/joshrnoll/ansible-collection-homelab)

- Wrote and published a collection of Ansible roles to Ansible galaxy which automate several homelab setup tasks
- Automates basic linux server setup and hardening and docker installation
- Automates creation of containerized services using Tailscale containers for networking, traefik reverse proxy and Cloudflare DNS records

### Traefik Install Playbook

[Project Github](https://github.com/joshrnoll/ansible-playbook-traefik-tailscale)

- Automates the installation of traefik with Tailscale and traefik-kop across multiple hosts using Ansible

### Personal Website

[Live Site](https://joshrnoll.com)

- My personal website runs on an Azure storage account with Cloudflare proxy for HTTPS
- The site is built with Hugo and deployed using github actions
- I write to my blog regularly to learn out loud and share my stories and passion for technology
- I also run a microblog off the subdomain https://notes.joshrnoll.com where I publish my raw notes

## Volunteer Work

### Web Developer, Cybersecurity Canon

- Responsible for posting reviews to the website (which runs on WordPress and Elementor)
- Responsible for development of new features such as search and filter/sortability, as well as new pages on the site
- Working on the development of a new platform using NextJS, Supabase and Resend. This new platform will allow members to manager their subscription to the newsletter, members of the canon's editorial team to review, provide feedback and publish reviews, and reviewers to write their reviews in an intuitive editor directly.

### Director of Programming, Arrowhead Research

- Responsible for continued development of engineering sprints, innovation forums and competition participation such as MITRE eCTF.

- Spoke at Moonshot Rodeo, an innovation forum that allows service members to present on their innovation projects. I presented on my open source code contribution to goose, highlighting how an open source culture within the military would enable faster innovation timelines and allow for identification of technical talent within the ranks. The US Army CTO was on the feedback panel and the presentation was received very positively.
