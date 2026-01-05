---
layout: page
title: Topics & Tags
permalink: /tags/
---

{% comment %} 
  1. Create a master list of all content 
{% endcomment %}
{% assign all_content = site.posts | concat: site.books | concat: site.pages %}

{% comment %} 
  2. Extract every single tag, flatten them into one list, and remove duplicates
{% endcomment %}
{% assign raw_tags = all_content | map: "tags" | join: "," | split: "," | uniq | sort %}

<div class="tag-index">
  {% for tag in raw_tags %}
    {% comment %} Skip empty tags {% endcomment %}
    {% if tag == "" or tag == nil %}{% continue %}{% endif %}
    
    <h3 id="{{ tag | slugify }}" style="border-bottom: 1px solid #eee; padding-top: 20px;">
      #{{ tag }}
    </h3>
    
    <ul>
      {% for item in all_content %}
        {% if item.tags contains tag %}
          <li>
            <a href="{{ item.url | relative_url }}">{{ item.title }}</a> 
            <small style="color: #999;">({{ item.date | date: "%b %Y" }})</small>
          </li>
        {% endif %}
      {% endfor %}
    </ul>
  {% endfor %}
</div>



# Other content I'm planning

* Information Architecture [IA]
* User Experience [UX]
* Customer Experience [CX]
* Wellbeing and Meditation
* Strategy
* Leadership