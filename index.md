---
title: 
layout: page
sitemap_priority: 1
description: Benji’s journey as a Product Manager. Expert in tech, decentralized music ecosystems, and human-centric systems. Currently open to PM and Product Owner roles.
---

# *Hi, I’m Benji.* 

## I like building products and understanding human behaviour, patterns and systems.

#### [Open to Work: Product Manager / Product Owner] 

###### Available for Full-time, Freelance, or Startup Co-founding. 

###### Making awesome products since 2019
<!-- 
---or since 2009 depending on how you count---
-->

<img src="/assets/images/profile-2.png" alt="Benji's Pic" style="width:25%; height:auto; border-radius: 50%; border: 2px solid #f0f0f0;">

<a href="https://calendly.com/venhamon" target="_blank" class="bootstrap-primary-btn">
  Book a Call with me
</a> Please tell me what you're interested about

<br/>

## Here's a quick peek of what I've done so far

| Role | Impact & Focus |
| :--- | :--- |
| **Product @ NEWM** | I’ve built products for a decentralized **music media ecosystem**, enabling artists with direct ownership of their music and distribution, and allow listeners to be part of the process and IP owners too.|
| **Presenter & Researcher** | See [my 3-Minute Pitch at ETH Event (2023)](https://youtu.be/0ZllEEaVkq0?t=5203) to see how I communicate product problems and thinking. I’d like to better know how communities organize in real space, and in the digital world. With this, I enjoy DeFi (Descentralized Finances), FOSS (Free and open-source software). I think I read a lot of books. |

<!--
| **Pitched & Built** | I've built and pitched products from 0 to 1 across **2 Hackathons** and a **Startup Incubation** program. I’ve also worked as a **freelance** Project Manager over the years. |
| **Tech Tinkerer & DIY** | I have a Sociology background combined with a "build-it-yourself" spirit. I've used a number of tools and languages to build this site: markdown, gitpages, vim, and a Dvorak keyboard, learning to build away from bloated platforms and companies that only focus on market value. There’s more to it dude. Let’s do awesome things together. :) |
-->

[![Giver ETH](/assets/images/banner.png)](https://youtu.be/0ZllEEaVkq0?t=5203){:target="_blank"}
*[My 3-Minute Pitch @ ETH Event (2023)](https://youtu.be/0ZllEEaVkq0?t=5203)*


<br/>

## >> My Product Thinking
I aim for bringing value to teams and users asap as possible:
- **Delivery and Execution:** Managing the product development lifecycle from ideation, to team alignment, concept, deployment, and improving.
- **Product Discovery & Research:** Understanding why, and what users need. Easier said than done, but my academics help me, methinks.

<!--
- **System Thinking:** Analyzing the systems and patterns behind and below the tech and communities that spread in digital and physical spaces.
- **DeFi & FOSS:** Into decentralized finance and open-source over a decade.
-->

<!--
###### I might write a post about (my) product thinking. What do you think, interested? Please [let me know, send me an email](mailto:venhamon@gmail.com)
-->


{% comment %} 1. Merge all sources and Sort Newest First {% endcomment %}
{% assign all_content = site.posts | concat: site.books | concat: site.pages %}
{% assign sorted_items = all_content | where: "featured", true | sort: "date" | reverse %}

<br/>

<section id="home-page">


  <section id="what-i-am-doing">

<!--
    <h2>What I'm Doing Now</h2>
    <p><a href="{{ '/now/' | relative_url }}" class="mono-scale-btn">Check out what I’m doing now here</a></p>
  </section>
    -->

  <section id="recent-posts">
    <h2>Last Updates</h2>
    <ul class="update-list">
      {% for item in sorted_items %}
        <li class="update-item">
          <div class="update-main">
            <a href="{{ item.url | relative_url }}" class="update-title">
             📚 {{ item.title }}
            </a>
            {% if item.category %}
              <span class="update-category">• {{ item.category }}</span>
            {% endif %}
          </div>
          <span class="update-date">
            {{ item.date | date: "%b %Y" }}
          </span>
        </li>
      {% endfor %}
    </ul>
  </section>

</section>

<!--
###### (Page last updated: {{ "now" | date: "%B %Y" }})
-->

<style>
  .update-list {
    list-style: none;
    padding: 0;
  }
  .update-item {
    margin-bottom: 12px;
    display: flex;
    justify-content: space-between;
    align-items: baseline;
    gap: 10px;
  }
  .update-main {
    display: flex;
    align-items: baseline;
    gap: 10px;
    overflow: hidden; /* Contains the shrinking category */
    flex: 1;
  }
  .update-title {
    font-weight: 600;
    text-decoration: none;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis; /* "Getting Things Done..." */
    max-width: 60%;
  }
  .update-category {
    font-size: 0.7em;
    color: #777;
    text-transform: uppercase;
    letter-spacing: 1px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis; 
    max-width: 30%; /* Limits the category width */
    flex-shrink: 1;  /* Allows it to get smaller if needed */
  }
  .update-date {
    font-family: monospace;
    font-size: 0.85em;
    color: #999;
    flex-shrink: 0; /* Ensures the date never shrinks or disappears */
  }

  /* Mobile: When the screen is really small, hide the category */
  @media (max-width: 480px) {
    .update-category {
      display: none;
    }
    .update-title {
      max-width: 100%; /* Title takes up the full space if category is hidden */
    }
  }
</style>

<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-7Z9R6XC60Z"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-7Z9R6XC60Z');
</script>