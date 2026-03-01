---
title: 
layout: page
sitemap_priority: 1
description: Benji’s journey as a Product Manager. Expert in tech, decentralized music ecosystems, and human-centric systems. Currently open to PM and Product Owner roles.
---


{% include hero-book-a-call.html %}


## I like building products and understanding human behaviour, patterns and systems.

##### I´m looking to create real impact with a tech product, focusing on customer experience (CX), on industries like wellbeing, social impact, and media. 

<!--
(With trilingual skills in: English, Spanish and Portuguese) 
-->

<!--
(Ideally I'd work with at a global company in a US timezone, where I can bring value with trilingual skills in English, Spanish and Portuguese.)
-->

<br/>

## Here's a quick peek of what I've done so far

| Role | Impact & Focus |
| :--- | :--- |
| **Product @ NEWM** | I’ve built products for a decentralized **music media ecosystem**, enabling artists with direct ownership of their music and distribution, and allow listeners to be part of the process and IP owners too.|
| **Presenter & Researcher** | See [my 3-Minute Pitch at ETH Event (2023)](https://youtu.be/0ZllEEaVkq0?t=5203) to see how I communicate product problems and thinking. I’d like to better know how communities organize in real space, and in the digital world. With this, I enjoy DeFi (Descentralized Finances), FOSS (Free and open-source software). I think I read a lot of books. |

[![Giver ETH](/assets/images/banner.png)](https://youtu.be/0ZllEEaVkq0?t=5203){:target="_blank"}
*[My 3-Minute Pitch @ ETH Event (2023)](https://youtu.be/0ZllEEaVkq0?t=5203)*

<br/>

## My Product Thinking
I aim for bringing value to teams and users as soon as possible:
- **Delivery and Execution:** Managing the product development lifecycle from ideation, to team alignment, concept, deployment, and improving.
- **Product Discovery & Research:** Understanding why, and what users need. Easier said than done, but my academics help me, methinks.

<br/>

{% comment %} Merge and Sort Content {% endcomment %}
{% assign all_content = site.posts | concat: site.books | concat: site.pages %}
{% assign sorted_items = all_content | where: "featured", true | sort: "date" | reverse %}

<section id="home-page">
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



<script async src="https://www.googletagmanager.com/gtag/js?id=G-7Z9R6XC60Z"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-7Z9R6XC60Z');
</script>

<style>
  /* Hero Container */
  .compact-hero {
    background: #fdfdfd;
    border: 1px solid #eee;
    border-radius: 12px;
    padding: 15px 25px;
    margin: 20px 0 40px 0;
    box-shadow: 0 2px 10px rgba(0,0,0,0.03);
  }

  .compact-flex {
    display: flex;
    align-items: center;
    gap: 20px;
    flex-wrap: wrap;
  }

  /* Avatar & Scoped Status Dot */
  .compact-avatar-box {
    position: relative;
    width: 65px;
    height: 65px;
    flex-shrink: 0;
  }

  .compact-avatar {
    width: 100%;
    height: 100%;
    border-radius: 50%;
    object-fit: cover;
    border: 2px solid #74c0fc;
  }

  .hero-status-dot {
    position: absolute;
    bottom: 2px;
    right: 2px;
    width: 13px;
    height: 13px;
    background: #44ff44;
    border: 2px solid #fff;
    border-radius: 50%;
    z-index: 2;
  }

  /* Text Info */
  .compact-info {
    flex-grow: 1;
    min-width: 250px;
  }

  .compact-name {
    margin: 0;
    font-size: 1.2rem;
    color: #1a1b1e;
    display: flex;
    align-items: center;
    gap: 10px;
    font-weight: 700;
  }

  .role-tag {
    font-size: 0.7rem;
    background: #f0f7ff;
    color: #329af0;
    padding: 3px 8px;
    border-radius: 4px;
    text-transform: uppercase;
    letter-spacing: 0.5px;
  }

  .compact-status {
    margin: 4px 0 0 0;
    font-size: 0.9rem;
    color: #666;
  }

  /* Buttons */
  .compact-ctas {
    display: flex;
    gap: 12px;
  }

  .btn-sm-primary {
    background: #329af0;
    color: #fff !important;
    padding: 10px 18px;
    border-radius: 8px;
    font-size: 0.85rem;
    font-weight: 600;
    text-decoration: none;
    transition: background 0.2s;
  }

  .btn-sm-primary:hover { background: #1c7ed6; }

  .btn-sm-outline {
    color: #329af0 !important;
    padding: 10px 14px;
    border-radius: 8px;
    border: 1px solid #329af0;
    text-decoration: none;
    transition: all 0.2s;
  }

  .btn-sm-outline:hover { background: #f0f7ff; }

  /* Responsive Stacking Logic */
  @media (max-width: 650px) {
    .compact-flex { 
      flex-direction: column; 
      text-align: center; 
      padding: 10px 0;
    }
    .compact-avatar-box { width: 80px; height: 80px; }
    .compact-ctas { width: 100%; justify-content: center; }
    .compact-name { justify-content: center; }
  }
</style>