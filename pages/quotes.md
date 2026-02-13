---
layout: page
title: Quotes
permalink: /quotes/
---

<section id="mental-library" style="margin-top: 50px;">
  <h3 style="color: #888; font-size: 0.9rem; text-transform: uppercase; letter-spacing: 2px;">Core Philosophy</h3>
  
  <div class="quote-container">
    {% for quote in site.data.quotes %}
    <div class="quote-card">
      <span class="quote-icon">“</span>
      <p class="quote-text">{{ quote.text }}</p>
      <div class="quote-footer">
        <span class="quote-author">— {{ quote.author }}</span>
        <span class="quote-tag">{{ quote.category }}</span>
      </div>
    </div>
    {% endfor %}
  </div>
</section>

<style>
  .quote-container {
    display: flex;
    flex-direction: column;
    gap: 1.5rem;
    margin-top: 20px;
  }
  .quote-card {
    background: #1a1a1a;
    border-left: 3px solid #0d6efd; /* Your signature blue */
    padding: 25px;
    border-radius: 4px 12px 12px 4px;
    position: relative;
    transition: background 0.3s ease;
  }
  .quote-card:hover {
    background: #222;
  }
  .quote-icon {
    position: absolute;
    top: -10px;
    left: 10px;
    font-size: 3rem;
    color: #333;
    font-family: serif;
    z-index: 0;
  }
  .quote-text {
    font-size: 1.15rem;
    font-style: italic;
    color: #e0e0e0;
    line-height: 1.6;
    position: relative;
    z-index: 1;
    margin-bottom: 15px;
  }
  .quote-footer {
    display: flex;
    justify-content: space-between;
    align-items: center;
    border-top: 1px solid #333;
    padding-top: 10px;
  }
  .quote-author {
    color: #888;
    font-weight: 600;
    font-size: 0.9rem;
  }
  .quote-tag {
    font-family: monospace;
    font-size: 0.7rem;
    color: #0d6efd;
    background: #0d6efd1a;
    padding: 2px 8px;
    border-radius: 4px;
  }
</style>