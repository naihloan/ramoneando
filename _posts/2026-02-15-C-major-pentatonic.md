---
layout: post          # or 'page' / 'default' depending on your theme
title:  "C Major Pentatonic Diagrams"
date:   2026-02-15    # optional but good practice for posts
permalink: /music/c-major-pentatonic/   # optional – controls the URL
---

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>C Major Scale Schematic</title>
    <style>
.container,
.container svg {
    background: white !important;
}

.container text.label-text {
    fill: #000 !important;
}

.container circle[fill="black"] {
    fill: #000 !important;
}

        body { font-family: Arial, sans-serif; display: flex; flex-direction: column; align-items: center; padding: 20px; }
        h1 { margin-bottom: 5px; color: #333; }
        p { color: #666; margin-bottom: 20px; font-size: 0.9em; }
        .container {
    /* ... your existing rules ... */
    min-width: 0;                    /* ← important in flex contexts */
    max-width: 100%;                 /* ← prevents overflow of parent */
    width: 100%;                     /* change from 95% if needed */
    box-sizing: border-box;          /* ← helps with padding */
}
        .container { background: #fff; padding: 20px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
    </style>
</head>
<body>

    <h1>C Major Scale</h1>
    <p>● Root &nbsp; | &nbsp; <span style="color:#888">● Pentatonic</span> &nbsp; | &nbsp; ○ Non-Pentatonic</p>

    <div class="container">
        <svg width="850" height="240" viewBox="0 0 850 240" xmlns="http://www.w3.org/2000/svg">
          <line x1="80" y1="40" x2="80" y2="190" stroke="#000" stroke-width="6" /> 
        
          <line x1="20" y1="40" x2="800" y2="40" stroke="#333" stroke-width="0.8" /> 
          <line x1="20" y1="70" x2="800" y2="70" stroke="#333" stroke-width="1" /> 
          <line x1="20" y1="100" x2="800" y2="100" stroke="#333" stroke-width="1.2" /> 
          <line x1="20" y1="130" x2="800" y2="130" stroke="#333" stroke-width="1.5" /> 
          <line x1="20" y1="160" x2="800" y2="160" stroke="#333" stroke-width="2" /> 
          <line x1="20" y1="190" x2="800" y2="190" stroke="#333" stroke-width="2.5" /> 
        
          <line x1="152" y1="40" x2="152" y2="190" stroke="#ccc" /> <line x1="224" y1="40" x2="224" y2="190" stroke="#ccc" /> <line x1="296" y1="40" x2="296" y2="190" stroke="#ccc" /> <line x1="368" y1="40" x2="368" y2="190" stroke="#ccc" /> <line x1="440" y1="40" x2="440" y2="190" stroke="#ccc" /> <line x1="512" y1="40" x2="512" y2="190" stroke="#ccc" /> <line x1="584" y1="40" x2="584" y2="190" stroke="#ccc" /> <line x1="656" y1="40" x2="656" y2="190" stroke="#ccc" /> <line x1="728" y1="40" x2="728" y2="190" stroke="#ccc" /> <line x1="800" y1="40" x2="800" y2="190" stroke="#ccc" /> <text x="260" y="25" font-family="Arial, sans-serif" font-size="12" font-weight="bold" text-anchor="middle">III</text>
          <text x="404" y="25" font-family="Arial, sans-serif" font-size="12" font-weight="bold" text-anchor="middle">V</text>
          <text x="548" y="25" font-family="Arial, sans-serif" font-size="12" font-weight="bold" text-anchor="middle">VII</text>
          <text x="692" y="25" font-family="Arial, sans-serif" font-size="12" font-weight="bold" text-anchor="middle">IX</text>
        
          <circle cx="50" cy="190" r="11" fill="#888" stroke="#333" /> <circle cx="116" cy="190" r="11" fill="white" stroke="#333" stroke-width="2" /> <circle cx="260" cy="190" r="11" fill="#888" stroke="#333" /> <circle cx="404" cy="190" r="11" fill="#888" stroke="#333" /> <circle cx="548" cy="190" r="11" fill="#888" stroke="#333" /> <circle cx="188" cy="160" r="11" fill="white" stroke="#333" stroke-width="2" /> <circle cx="260" cy="160" r="11" fill="black" /> <circle cx="404" cy="160" r="11" fill="#888" stroke="#333" /> <circle cx="548" cy="160" r="11" fill="#888" stroke="#333" /> <circle cx="260" cy="130" r="11" fill="white" stroke="#333" stroke-width="2" /> <circle cx="404" cy="130" r="11" fill="#888" stroke="#333" /> <circle cx="548" cy="130" r="11" fill="#888" stroke="#333" /> <circle cx="332" cy="100" r="11" fill="white" stroke="#333" stroke-width="2" /> <circle cx="404" cy="100" r="11" fill="black" /> <circle cx="548" cy="100" r="11" fill="#888" stroke="#333" /> <circle cx="692" cy="100" r="11" fill="#888" stroke="#333" /> <circle cx="476" cy="70" r="11" fill="white" stroke="#333" stroke-width="2" /> <circle cx="620" cy="70" r="11" fill="#888" stroke="#333" /> <circle cx="764" cy="70" r="11" fill="#888" stroke="#333" /> <circle cx="548" cy="40" r="11" fill="white" stroke="#333" stroke-width="2" /> <circle cx="620" cy="40" r="11" fill="black" /> </svg>
    </div>

</body>
</html>