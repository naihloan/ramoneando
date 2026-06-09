---
layout: null
permalink: /sw.js
---
const CACHE_NAME = 'ramoneando-cache-v1';
const ASSETS_TO_CACHE = [
  '/',
  '/assets/main.css',
  '/assets/icon/favicon.ico',
  '/assets/images/chesafari.png',
  // Automatically pre-cache all Jekyll generated pages
  {% for p in site.pages %}
    {% if p.url != "/sw.js" and p.url != "/feed.xml" and p.url != "/robots.txt" and p.url != "/sitemap.xml" and p.url != "/sitemap.xsl" %}
      "{{ p.url | relative_url }}",
    {% endif %}
  {% endfor %}
  // Automatically pre-cache all blog posts
  {% for post in site.posts %}
    "{{ post.url | relative_url }}",
  {% endfor %}
  // Automatically pre-cache all book reviews/recommendations
  {% for book in site.books %}
    "{{ book.url | relative_url }}",
  {% endfor %}
];

// Install Event - Pre-cache all generated assets
self.addEventListener('install', (event) => {
  event.waitUntil(
    caches.open(CACHE_NAME).then((cache) => {
      // Filter out empty lines or duplicates and cache files
      const cleanAssets = [...new Set(ASSETS_TO_CACHE.filter(path => path && path.trim() !== ''))];
      return cache.addAll(cleanAssets);
    })
  );
  self.skipWaiting();
});

// Activate Event - Clean up old caches
self.addEventListener('activate', (event) => {
  event.waitUntil(
    caches.keys().then((cacheNames) => {
      return Promise.all(
        cacheNames.map((cache) => {
          if (cache !== CACHE_NAME) {
            return caches.delete(cache);
          }
        })
      );
    })
  );
  self.clients.claim();
});

// Fetch Event - Network-First caching strategy
self.addEventListener('fetch', (event) => {
  // Only handle HTTP/HTTPS requests (ignores devtools/chrome-extensions)
  if (!event.request.url.startsWith('http')) return;

  event.respondWith(
    fetch(event.request)
      .then((networkResponse) => {
        // If successful, clone response and update the cache dynamically
        if (networkResponse.status === 200) {
          const responseClone = networkResponse.clone();
          caches.open(CACHE_NAME).then((cache) => {
            cache.put(event.request, responseClone);
          });
        }
        return networkResponse;
      })
      .catch(() => {
        // Network failed (offline), fallback to cache
        return caches.match(event.request);
      })
  );
});
