---
title: 
layout: page
sitemap_priority: 1
description: Benji’s journey as a worker in tech and Product, including career goals, interests, networking, small blogging, playing bass and music with his band Sinapsys, and book recommendations.
---


<img src="/assets/images/profile-2.png" alt="Benji´s Pic" style="width:30%; height:auto;">

# *Hi! I'm Benji, aka venhamon. :D*

###### Making awesome products since 2019

###### ---or since 2009 depending on how you count---

# I like building products and understanding human behaviour, patterns and systems.

[![Giver ETH](/assets/images/banner.png)](https://youtu.be/0ZllEEaVkq0?t=5203)
*[My 3-Minute Pitch @ ETH past Event (2023)](https://youtu.be/0ZllEEaVkq0?t=5203)*

|   | Product & Personal Approaches |
| :--- | :--- |
| **at NEWM** | I've built product for a decentralized music ecosystem, enabling artists to own their distribution. |
| **Execution** | I've built and pitched products across 2 Hackathons and a Startup Incubation. I've also worked as a freelance Project Manager over the years.
| **Explorer** | I'm a bit of a dinosaur by choice in some areas: a very very late mobile adopter, almost zero social media. On the other hand, I prefer using a Dvorak keyboard (seems more logical and easier on the hands), vim and git, even as a product person. |
| **Researcher** | I’d like to better know how communities organize in real space, and in the digital world. With this, I enjoy DeFi (Descentralized Finances), FOSS (Free and open-source software). I think I read a lot of books. |
| **The DIY (Do-It-Yourself) spirit** | I´ve learned to build a static site (like this one) over a decade ago not out of need, but because I want to learn how to build away from bloated platforms and companies that only focus on market value. There's more to it dude. Let's do awesome things together. :) |

## Open to PM roles, :). Let's talk! When is:

<a href="https://calendly.com/venhamon" target="_blank" class="bootstrap-primary-btn">
  the best time for you?
</a>

## Here are some hats I've used so far:
- Product Manager [PM]
- Project Manager[PM]
- and all things delivery
- building
- researching
- discovery
- creating real value for real users

## I'm [open to work in product roles](/about/):
- full-time
- freelance
- consultant
- co-founder
- otherwise



<!-- > <div style="text-align: right;">
> "We play not to avoid losing but to find out what we are capable of"  >   <br/> > — Jane McGonigal > </div>

# > "The only way to do great work is to love what you do."  
# > — Steve Jobs

## What is this all?
# My Website, by Benji 
bundle exec jekyll serve --livereload
http://localhost:4000

-->


<!-- Bootstrap Primary button – clean white-text hover -->
<style>
.bootstrap-primary-btn {
  display: inline-block;
  padding: 12px 28px;
  background-color: #0d6efd;
  color: white !important;                  /* force white */
  text-decoration: none;
  font-weight: 500;
  font-size: 1rem;
  border-radius: 6px;
  border: none;
  box-shadow: 0 4px 6px rgba(13, 110, 253, 0.25);
  transform: translateY(-2px);
  transition: all 0.25s ease;
}
.bootstrap-primary-btn:hover {
  background-color: #0b5ed7;                /* slightly darker blue */
  color: white !important;                  /* stays white */
  box-shadow: 0 8px 20px rgba(13, 110, 253, 0.4);
  transform: translateY(-4px);
}
.bootstrap-primary-btn:active {
  transform: translateY(-1px);
}
@media (max-width: 600px) {
  .bootstrap-primary-btn {
    padding: 10px 20px;
    font-size: 0.95rem;
  }
}
</style>



<!-- Monochrome scale button with elevated effect -->
<style>
.mono-scale-btn {
  display: inline-block;
  padding: 10px 20px;
  background-color: transparent;
  color: #000000; /* Black text */
  text-decoration: none;
  border-radius: 8px;
  font-size: 1rem;
  text-align: center;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  transform: translateY(-2px);
  transition: color 0.2s ease-in-out, box-shadow 0.2s ease-in-out, transform 0.2s ease-in-out;
}
.mono-scale-btn:hover {
  color: #6c757d; /* Grey text */
  box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
  transform: translateY(-4px) scale(1.05); /* Slight scale */
}
@media screen and (max-width: 600px) {
  .mono-scale-btn {
    padding: 8px 16px;
    font-size: 0.9rem;
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

{% comment %} 1. Merge all sources and Sort Newest First {% endcomment %}
{% assign all_content = site.posts | concat: site.books | concat: site.pages %}
{% assign sorted_items = all_content | where: "featured", true | sort: "weight" %}

<section id="home-page">

  <section id="what-i-am-doing">
    <h3>What I'm Doing Now</h3>
    <p><a href="{{ '/now/' | relative_url }}" class="mono-scale-btn">Check out what I’m doing now here</a></p>
  </section>

  <section id="recent-posts">
    <h3>Last Updates</h3>
    <ul class="update-list">
      {% for item in sorted_items %}
        <li class="update-item">
          <div class="update-main">
            <a href="{{ item.url | relative_url }}" class="update-title">
              {{ item.title }}
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