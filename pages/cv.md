---
layout: page
title: "Benji J. | Product Manager & Builder CV"
permalink: /cv/
sitemap_priority: 0.9
description: "Curriculum Vitae of Benji J. — Product Manager with focus on social & sociological systems, SaaS, and Web3. Specializing in UX and pre-seed incubation. Based in Americas."
---

<style>
  /* CV Header Quick Card */
  .cv-header-card {
    background: #ffffff;
    border: 2px solid #d0d7de;
    border-radius: 12px;
    padding: 22px 24px;
    margin: 1.5rem 0 2rem 0;
    box-shadow: 0 4px 16px rgba(0, 0, 0, 0.06);
  }

  /* List of Meta items */
  .cv-meta-list {
    list-style: none !important;
    padding: 0 !important;
    margin: 0 0 20px 0 !important;
  }

  .cv-meta-item {
    display: flex;
    align-items: baseline;
    gap: 16px;
    padding: 12px 0;
    border-bottom: 1px solid #eef2f6;
    list-style: none !important;
    font-size: 0.95rem;
    line-height: 1.5;
  }

  .cv-meta-item:last-child {
    border-bottom: none;
    padding-bottom: 4px;
  }

  .cv-meta-label {
    min-width: 140px;
    color: #475569;
    font-weight: 700;
    font-size: 0.84rem;
    text-transform: uppercase;
    letter-spacing: 0.6px;
    display: inline-flex;
    align-items: center;
    gap: 8px;
    flex-shrink: 0;
  }

  .cv-meta-value {
    color: #0f172a;
    flex: 1;
    display: flex;
    flex-wrap: wrap;
    gap: 8px;
    align-items: center;
  }

  /* Clearly defined role chips with borders */
  .cv-role-chip {
    display: inline-flex;
    align-items: center;
    background: #f1f5f9;
    color: #0f172a;
    border: 1.5px solid #94a3b8;
    padding: 4px 12px;
    border-radius: 6px;
    font-size: 0.85rem;
    font-weight: 600;
    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.04);
  }

  .cv-linkedin-link {
    color: #0969da !important;
    font-weight: 600;
    text-decoration: none;
    display: inline-flex;
    align-items: center;
    gap: 6px;
    border-bottom: 1.5px solid #0969da !important;
  }

  .cv-linkedin-link:hover {
    color: #054da7 !important;
    border-bottom-color: #054da7 !important;
  }

  /* Buttons Row */
  .cv-action-row {
    display: flex;
    flex-wrap: wrap;
    gap: 14px;
    align-items: center;
    padding-top: 10px;
  }

  .cv-btn {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    gap: 10px;
    padding: 12px 24px;
    font-size: 0.95rem;
    font-weight: 700;
    border-radius: 8px;
    text-decoration: none !important;
    cursor: pointer;
    letter-spacing: 0.3px;
    transition: all 0.2s ease-in-out;
  }

  /* Primary CTA: Let's meet! (30 min) */
  .cv-btn-primary {
    background-color: #0969da !important;
    color: #ffffff !important;
    border: 2.5px solid #054da7 !important;
    box-shadow: 0 4px 12px rgba(9, 105, 218, 0.3);
  }

  .cv-btn-primary:hover {
    background-color: #054da7 !important;
    border-color: #033d8b !important;
    color: #ffffff !important;
    box-shadow: 0 6px 16px rgba(9, 105, 218, 0.45);
    transform: translateY(-2px);
  }

  /* Secondary CTA: Download PDF CV */
  .cv-btn-secondary {
    background-color: #ffffff !important;
    color: #0969da !important;
    border: 2.5px solid #0969da !important;
    box-shadow: 0 2px 6px rgba(0, 0, 0, 0.08);
  }

  .cv-btn-secondary:hover {
    background-color: #f0f7ff !important;
    border-color: #054da7 !important;
    color: #054da7 !important;
    box-shadow: 0 4px 12px rgba(9, 105, 218, 0.2);
    transform: translateY(-2px);
  }

  @media screen and (max-width: 600px) {
    .cv-header-card {
      padding: 16px;
    }
    .cv-meta-item {
      flex-direction: column;
      align-items: flex-start;
      gap: 6px;
    }
    .cv-meta-label {
      min-width: unset;
    }
    .cv-action-row {
      flex-direction: column;
      align-items: stretch;
      gap: 12px;
    }
    .cv-btn {
      width: 100%;
      justify-content: center;
    }
  }
</style>

<!-- CV Header Bar: Skimmable Summary & Actions -->
<div class="cv-header-card">
  <ul class="cv-meta-list">
    <li class="cv-meta-item">
      <span class="cv-meta-label"><i class="fa-regular fa-calendar-check fa-fw"></i> Last Updated</span>
      <span class="cv-meta-value">{{ site.status_last_checked | default: "September 2026" }}</span>
    </li>
    <li class="cv-meta-item">
      <span class="cv-meta-label"><i class="fa-brands fa-linkedin fa-fw"></i> LinkedIn</span>
      <span class="cv-meta-value">
        <a href="https://www.linkedin.com/in/{{ site.linkedin_username | default: 'bj-pm' }}/" target="_blank" rel="noopener noreferrer" class="cv-linkedin-link">
          linkedin.com/in/{{ site.linkedin_username | default: 'bj-pm' }} <i class="fa-solid fa-arrow-up-right-from-square fa-xs"></i>
        </a>
      </span>
    </li>
    <li class="cv-meta-item">
      <span class="cv-meta-label"><i class="fa-solid fa-briefcase fa-fw"></i> Open to Roles</span>
      <span class="cv-meta-value">
        <span class="cv-role-chip">Product Manager (PM)</span>
        <span class="cv-role-chip">Product Owner (PO)</span>
        <span class="cv-role-chip">Lead PM</span>
        <span class="cv-role-chip">Head of Product</span>
        <span class="cv-role-chip">Product Consultant</span>
        <span class="cv-role-chip">Product Co-Founder</span>
      </span>
    </li>
  </ul>

  <div class="cv-action-row">
    <a href="{{ site.calendly_url | default: 'https://calendly.com/venhamon' }}" target="_blank" rel="noopener noreferrer" class="cv-btn cv-btn-primary">
      <i class="fa-regular fa-calendar-days"></i> Let's meet! (30 min)
    </a>
    <a href="{{ '/docs/Benji_J_Product_Manager_CV.pdf' | relative_url }}" class="cv-btn cv-btn-secondary" download="Benji_J_Product_Manager_CV.pdf">
      <i class="fa-solid fa-file-arrow-down"></i> Download PDF CV
    </a>
  </div>
</div>

<img src="/assets/images/profile-2.png" alt="Benji´s Pic" style="width: 140px; height: auto; border-radius: 8px; border: 2px solid #3b3e45; margin-bottom: 15px;">

# Benji J  | Product builder with focus on social and sociological systems

| | Milestones & Highlights |
| :--- | :--- |
| **Experienced Delivery builder** | Making awesome products since 2019. |
| **Incubated Founder** | Selected for Incubation at Speezard, validating our pre-seed Project from 0 to 1. |
| **Hackathon enthusiast & Speaker:** | Prototyped a decentralized solution and gained prizes. Presented a [3-minute pitch](https://youtu.be/OZIIEEaVkq0?t=5203) to a live audience of 2K people at ETH Argentina 2023. |
| **Status: American Citizen** | Based in Argentina. |
| **Time Zone: Availability** | NYC/Buenos Aires/Americas. |
| **Linguistics: Trilingual** | English/Spanish/Portuguese. |

## Professional Summary
Experienced Product Manager with {% include years-in-tech.html %} years in SaaS and Web3, specializing in UX and pre-seed incubation. Proven track record of launching impactful products and leading cross-functional teams. Skilled in data-driven decision-making and user engagement, with a focus on industries like Meditation, Fundraising, and Music. Passionate about building meaningful, user-centered solutions and driving innovation in startups.

<style>
  .skills-matrix {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    gap: 20px;
    margin: 20px 0;
  }
  .skill-category {
    border: 1px solid #e1e4e8;
    padding: 15px;
    border-radius: 6px;
  }
  .skill-category h4 { margin-top: 0; color: #2a7ae2; font-size: 0.9rem; text-transform: uppercase; }
  .skill-list { list-style: none; padding: 0; margin: 0; font-size: 0.85rem; line-height: 1.6; }
</style>

<div class="skills-matrix">
  <div class="skill-category">
    <h4>Product & Strategy</h4>
    <ul class="skill-list">
      <li>Early-Stage Scaling </li>
      <li>SaaS Lifecycle </li>
      <li>Go-to-Market [GTM]</li>
    </ul>
  </div>
  <div class="skill-category">
    <h4>Design & UX</h4>
    <ul class="skill-list">
      <li>UX Research </li>
      <li>User-Centered Design </li>
      <li>Figma & Miro</li>
    </ul>
  </div>
  <div class="skill-category">
    <h4>Technical Stack</h4>
    <ul class="skill-list">
      <li>Web3 & Blockchain</li>
      <li>JIRA</li>
      <li>SQL & APIs </li>
      <li>Agile / Scrum / LeSS </li>
    </ul>
  </div>
</div>

<br/>

<div style="text-transform: uppercase; font-size: 3.7rem; letter-spacing: 2px; color: #999; margin-bottom: 10px;"> 
	Work History </div>

### **NEWM: Web3 Music Ecosystem** | Product Manager 
<!-- & Quality Manager -->
*Dec 2022 – June 2026* 

* **Product Launches:** Studio, Stream Token Marketplace, Streaming (B2C, B2B, B2B2C).
* **UX & Research:** Launched a UX research initiative that drove product discovery, informed roadmap decisions, and improved user satisfaction.
* **Growth & Metrics:** Establishing growth paths using product metrics and data analytics.
* **Impact:** Streamlined UX flow for listeners to access music from 100+ artists and enabled the first 50+ active users to the platform.
* **Operations:** Setting data-informed product cycles from idea to post-launch and streamlining KYC, distribution, and payment experiences.

### **Preferati** | Product Specialist
*Aug 2021 – July 2022* 

* **Product Launches:** Applicant Tracking System (ATS), CRM, and CMS (B2B, B2B2C).
* **Success:** Built an ATS from scratch as team lead and improved sales for a Truck Dealership site.
* **Innovation:** Prototyped company app gamification, including user profiles and metrics.

### **WillDom** | Product Marketing Manager
*July 2020 – July 2021* 

* **Content Strategy:** Built a content strategy plan for 15,000 subscribers.
* **Culture:** Prepared hackathons to impact team morale and company culture.

### **Ross Outside the Box** | Back End Web Developer
*Nov 2019 – May 2020* 

* **Product Launch:** Developed big data workflows for Dirección General de Rentas (B2B).


<br/>

<!-- --> 
<div style="text-transform: uppercase; font-size: 3.7rem; letter-spacing: 2px; color: #999; margin-bottom: 10px;">
  	Education </div>

* **System's Analyst:** ESCMB/UNC-Córdoba, Argentina (2019–Present).
* **Master’s in Sociology:** UNICAMP, Brazil (2012–2014).
* **Graduate in Sociology:** UBA, Buenos Aires, Argentina (2002–2009).

<br/>
<!-- --> 
<div style="text-transform: uppercase; font-size: 3.7rem; letter-spacing: 2px; color: #999; margin-bottom: 10px;">
  	Resources </div>

<!-- --> 
<div style="text-transform: uppercase; font-size: 1.7rem; letter-spacing: 2px; color: #999; margin-bottom: 10px;"> 
	Personal Projects & Incubation </div>

* **Giver (Donations):** Co-Founder (Pre-Startup Stage). Received Quadratic Funding at Hackathon @Buildathon ETH Argentina (Sept 2023).
* **Speezard:** Invited to Pre-seed Web3 Incubation with a fee waiver (Autumn 2023).
* **Think & Dev:** Won "Clean Code Prize" at Hackathon (March 2023).
* **Sustainable Development Foundation:** Founding Member, Writer, and PM (2018–Present).

<!-- --> 
<div style="text-transform: uppercase; font-size: 1.7rem; letter-spacing: 2px; color: #999; margin-bottom: 10px;"> 
	 Skills & Expertise </div>


### Experienced
* **Product Strategy:** Go-to-Market Product Launches, Early-Stage Product Scaling, SaaS Product Lifecycle Management.
* **User-Centricity:** Customer-Centric UX Strategies, User-Centered Design, UX Research, and User Case Studies.
* **Technical & Data:** Data Analytics & Dashboards, Agile Scrum Practices, SQL, APIs, Git, HTML/CSS.
* **Leadership:** Cross-Functional Team Leadership.
* **Languages:** English, Spanish, Portuguese.

### In Progress
* Large-Scale Scrum (LeSS)
* User Acquisition/Engagement/Retention
* Pricing Models & Cohort Analysis
* Gamification
* Customer Journey Maps (CJM)

### Tools
PRDs, OKRs, KPIs, JIRA, Figma, Miro, Slack, Typeform, Mailchimp, Postman, Linux, and more.


<style>
section {
  margin-bottom: 4rem; /* Adds a large chunk of whitespace between sections */
}

h2 {
  margin-top: 0;
  border-bottom: 1px solid #f0f0f0; /* A very faint, subtle line instead of a dark <hr> */
  padding-bottom: 10px;
}
</style>

---

###### /cv/ page: Last updated on {{ site.status_last_checked | default: "September 2026" }}

###### PDF version of this page: [Download Benji_J_Product_Manager_CV.pdf]({{ '/docs/Benji_J_Product_Manager_CV.pdf' | relative_url }}).

<br/>

# Also see my [Goals](../goals/) and [About](../about/) sections

