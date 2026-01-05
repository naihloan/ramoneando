---
title: 
layout: page
sitemap_priority: 1
description: Benji’s journey as a worker in tech and Product, including career goals, interests, networking, small blogging, playing bass and music with his band Sinapsys, and book recommendations.
---


[![Giver ETH](/assets/images/banner.png)](https://youtu.be/0ZllEEaVkq0?t=5203)
*[My 3-Minute Pitch @ ETH past Event (2023)](https://youtu.be/0ZllEEaVkq0?t=5203)*

# I like building products and understanding human behaviour, patterns and systems.

|   | Product & Personal Approaches |
| :--- | :--- |
| **at NEWM** | I've built product for a decentralized music ecosystem, enabling artists to own their distribution. |
| **Explorer** | I'm a bit of a dinosaur by choice in some areas: a very very late mobile adopter, almost zero social media. On the other hand, I prefer using a Dvorak keyboard (seems more logical and easier on the hands), vim and git, even as a product person. |
| **Researcher** | I’d like to better know how communities organize in real space, and in the digital world. With this, I enjoy DeFi (Descentralized Finances), FOSS (Free and open-source software). I think I read a lot of books. |
| **Execution** | I've built and pitched products across 2 Hackathons and a Startup Incubation. I've also worked as a freelance Project Manager over the years.
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



<p> <a href="/now/" class="mono-scale-btn" aria-label="Contact me via email">Check out what I’m doing now here </a></p>
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

<h3>Recent Updates</h3>

<ul style="list-style: none; padding: 0;">
  {% for item in sorted_items %}
    <li style="margin-bottom: 10px; display: flex; align-items: baseline; gap: 10px;">
      
      <a href="{{ item.url | relative_url }}" style="font-weight: 600; text-decoration: none; flex-shrink: 0;">
        {{ item.title }}
      </a>

      {% if item.category %}
        <span style="font-size: 0.7em; color: #777; text-transform: uppercase; letter-spacing: 1px;">
          • {{ item.category }}
        </span>
      {% endif %}

      <span style="font-family: monospace; font-size: 0.85em; color: #999; margin-left: auto;">
        {{ item.date | date: "%b %Y" }}
      </span>
      
    </li>
  {% endfor %}
</ul>