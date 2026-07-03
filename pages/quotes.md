---
layout: page
title: Quotes
permalink: /quotes/
---

## Book quotes

A simple place for my book notes and quotations.

<section id="mental-library" style="margin-top: 30px;">
  <div class="quote-container">
    {% for quote in site.data.quotes %}
    <div class="quote-card">
      <span class="quote-icon">“</span>
      <p class="quote-text">{{ quote.text | strip_html }}</p>
      <div class="quote-footer">
        <div class="quote-attribution">
          <span class="quote-author">— {{ quote.author }}</span>
          {% if quote.book %}<span class="quote-book">{{ quote.book }}</span>{% endif %}
          {% if quote.section %}<span class="quote-section">{{ quote.section }}</span>{% endif %}
        </div>
        <div class="quote-actions">
          <span class="quote-tag">{{ quote.category }}</span>
          {% if quote.slug %}
            <a href="/quotes/{{ quote.slug }}/" class="quote-link">Read more →</a>
          {% endif %}
        </div>
      </div>
    </div>
    {% endfor %}
  </div>
</section>

<style>
  .quote-container {
    display: flex;
    flex-direction: column;
    gap: 1.2rem;
    margin-top: 20px;
  }
  .quote-card {
    background: #1a1a1a;
    border-left: 3px solid #0d6efd;
    padding: 20px 22px;
    border-radius: 4px 12px 12px 4px;
    position: relative;
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
    font-size: 1.05rem;
    font-style: italic;
    color: #e0e0e0;
    line-height: 1.6;
    position: relative;
    z-index: 1;
    margin-bottom: 12px;
    white-space: pre-line;
  }
  .quote-footer {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    gap: 1rem;
    border-top: 1px solid #333;
    padding-top: 10px;
  }
  .quote-attribution {
    display: flex;
    flex-direction: column;
    gap: 0.25rem;
  }
  .quote-author {
    color: #888;
    font-weight: 600;
    font-size: 0.9rem;
  }
  .quote-book,
  .quote-section {
    color: #c8d8ff;
    font-size: 0.85rem;
  }
  .quote-actions {
    display: flex;
    flex-direction: column;
    align-items: flex-end;
    gap: 0.4rem;
  }
  .quote-tag {
    font-family: monospace;
    font-size: 0.7rem;
    color: #0d6efd;
    background: #0d6efd1a;
    padding: 2px 8px;
    border-radius: 4px;
  }
  .quote-link {
    color: #c8d8ff;
    font-size: 0.85rem;
    text-decoration: none;
  }
  .quote-link:hover {
    text-decoration: underline;
  }
</style>
