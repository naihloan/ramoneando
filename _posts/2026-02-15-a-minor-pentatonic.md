---
layout: post          # or 'page' / 'default' depending on your theme
title:  "Easy Horizontal Sliding Scale Patterns"
date:   2026-02-15    # optional but good practice for posts
permalink: /music/a-minor-pentatonic/   # optional – controls the URL
---

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>A Minor. Natural and Pentatonic</title>
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

        :root {
            --primary-gold: #d4a017;
            --bg-gray: #f4f4f4;
            --card-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }



.theory-note, .theory-note em {
    color: #ccc !important;
}

.theory-container {
    background: #1a1a1a !important;
    border: 1px solid #333;
}

.val {
    color: #ffcc66 !important;          /* brighter gold for dark mode */
}

        /* Theory Table Responsive Styling */
        .theory-container {
            width: 100%;
            max-width: 900px;
            overflow-x: auto; /* Horizontal scroll for mobile */
            margin-bottom: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.05);
            -webkit-overflow-scrolling: touch;
        }

.theory-table {
    table-layout: fixed;              /* already good - keeps columns equal */
    width: 100%;
    min-width: 700px;
    border-collapse: collapse;
    border-spacing: 0;
}

.theory-table td {
    border: 1px solid #eee;
    padding: 14px 8px;                /* consistent padding top/bottom + sides */
    text-align: center;
    vertical-align: middle;
    width: 12.5%;                     /* 100% / 8 columns = 12.5% each */
    box-sizing: border-box;           /* padding doesn't increase width */
    height: 60px;                     /* fixed row height for visual balance */
    font-size: 1.05em;                /* slightly larger for readability */
}

/* Make sure the header row (first row) also follows the same rules */
.theory-table tr:first-child td {
    font-weight: bold;
    background: #f9f9f9;              /* light background to distinguish */
    height: 65px;                     /* slightly taller header if desired */
}

/* Optional: gold background on important cells */
.theory-table .val {
    background: rgba(212, 160, 23, 0.08); /* very light gold tint */
}

        .extension { color: #888; }

        .theory-note { 
            color: #666; 
            font-size: 0.9em; 
            margin-bottom: 25px; 
            max-width: 600px; 
            text-align: center; 
            line-height: 1.6;
        }

        .section-header { 
            margin: 40px 0 15px 0; 
            font-size: 1.2em; 
            font-weight: bold; 
            color: #444; 
            border-bottom: 2px solid #ddd; 
            width: 95%; 
            max-width: 1300px;
            padding-bottom: 5px; 
        }

        /* Fretboard Scroll Containers */
        .container { 
            background: white; 
            padding: 20px; 
            border-radius: 12px; 
            box-shadow: var(--card-shadow); 
            overflow-x: auto; 
            width: 95%; 
            max-width: 1300px;
            margin-bottom: 20px; 
            -webkit-overflow-scrolling: touch;
        }

        .label-text { font-family: Arial, sans-serif; font-size: 11px; font-weight: bold; pointer-events: none; }
        .white-text { fill: #fff; }
        .black-text { fill: #000; }
        
        .swipe-hint {
            font-size: 0.8em;
            color: #aaa;
            margin-top: -10px;
            margin-bottom: 10px;
            font-style: italic;
        }
    </style>
</head>
<body>

    <h1>A Minor: Natural and Pentatonic Scales</h1>

    <div class="theory-container">
    <table class="theory-table">
        <tbody>
            <tr>
                <td class="val">[Root]</td>
                <td class="val extension">(T)</td>
                <td class="val">S</td>
                <td class="val">T</td>
                <td class="val">T</td>
                <td class="val extension">(S)</td>
                <td class="val">T</td>
                <td class="val">[Root]</td>
            </tr>
            <tr>
                <td class="val">1</td>
                <td class="val extension">(2)</td>
                <td class="val">♭3</td>
                <td class="val">4</td>
                <td class="val">5</td>
                <td class="val extension">(♭6)</td>
                <td class="val">♭7</td>
                <td class="val">8</td>
            </tr>
        </tbody>
    </table>
</div>

    <div class="theory-note">
        <em>
            Note: All natural notes (A B C D E F G).<br>
            DNA shared with C Major.<br>
            Parentheses (T/S) indicate Diatonic extensions to the Pentatonic core.
        </em>
    </div>

<div class="section-header">1. Pure Visual Shapes (Muscle Memory)</div>
    <div class="swipe-hint">Swipe to see full neck →</div>
    <div class="container">
        <svg width="1300" height="240" viewBox="0 0 1300 240" xmlns="http://www.w3.org/2000/svg">
          <defs>
            <pattern id="stripes2" width="4" height="4" patternUnits="userSpaceOnUse" patternTransform="rotate(45)">
              <line x1="0" y1="0" x2="0" y2="4" stroke="#333" stroke-width="2" />
            </pattern>
          </defs>
          <line x1="80" y1="40" x2="80" y2="190" stroke="#000" stroke-width="6" /> 
          <line x1="20" y1="40" x2="1280" y2="40" stroke="#333" stroke-width="0.8" /> 
          <line x1="20" y1="70" x2="1280" y2="70" stroke="#333" stroke-width="1" /> 
          <line x1="20" y1="100" x2="1280" y2="100" stroke="#333" stroke-width="1.2" /> 
          <line x1="20" y1="130" x2="1280" y2="130" stroke="#333" stroke-width="1.5" /> 
          <line x1="20" y1="160" x2="1280" y2="160" stroke="#333" stroke-width="2" /> 
          <line x1="20" y1="190" x2="1280" y2="190" stroke="#333" stroke-width="2.5" /> 
          
          <line x1="152" y1="40" x2="152" y2="190" stroke="#ccc" /> <line x1="224" y1="40" x2="224" y2="190" stroke="#ccc" /> 
          <line x1="296" y1="40" x2="296" y2="190" stroke="#ccc" /> <line x1="368" y1="40" x2="368" y2="190" stroke="#ccc" /> 
          <line x1="440" y1="40" x2="440" y2="190" stroke="#ccc" /> <line x1="512" y1="40" x2="512" y2="190" stroke="#ccc" /> 
          <line x1="584" y1="40" x2="584" y2="190" stroke="#ccc" /> <line x1="656" y1="40" x2="656" y2="190" stroke="#ccc" /> 
          <line x1="728" y1="40" x2="728" y2="190" stroke="#ccc" /> <line x1="800" y1="40" x2="800" y2="190" stroke="#ccc" /> 
          <line x1="872" y1="40" x2="872" y2="190" stroke="#ccc" /> <line x1="944" y1="40" x2="944" y2="190" stroke="#ccc" /> 
          <line x1="1016" y1="40" x2="1016" y2="190" stroke="#ccc" /> <line x1="1088" y1="40" x2="1088" y2="190" stroke="#ccc" /> 
          <line x1="1160" y1="40" x2="1160" y2="190" stroke="#ccc" /> <line x1="1232" y1="40" x2="1232" y2="190" stroke="#ccc" />
          <line x1="1304" y1="40" x2="1304" y2="190" stroke="#ccc" /> 

          <text x="260" y="25" class="label-text black-text" text-anchor="middle">III</text>
          <text x="404" y="25" class="label-text black-text" text-anchor="middle">V</text>
          <text x="548" y="25" class="label-text black-text" text-anchor="middle">VII</text>
          <text x="692" y="25" class="label-text black-text" text-anchor="middle">IX</text>
          <text x="908" y="25" class="label-text black-text" text-anchor="middle">XII</text>
          <text x="1124" y="25" class="label-text black-text" text-anchor="middle">XV</text>
          <text x="1268" y="25" class="label-text black-text" text-anchor="middle">XVII</text>

          <circle cx="50" cy="190" r="11" fill="#888" stroke="#333" />
          <circle cx="116" cy="190" r="11" fill="white" stroke="#333" stroke-width="2" />
          <circle cx="260" cy="190" r="11" fill="#888" stroke="#333" />
          <circle cx="404" cy="190" r="11" fill="black" />
          <circle cx="548" cy="190" r="11" fill="white" stroke="#333" stroke-width="2" />
          <circle cx="260" cy="160" r="11" fill="#888" stroke="#333" />
          <circle cx="404" cy="160" r="11" fill="#888" stroke="#333" />
          <circle cx="476" cy="160" r="11" fill="url(#stripes2)" stroke="#333" stroke-width="2" />
          <circle cx="548" cy="160" r="11" fill="#888" stroke="#333" />
          <circle cx="260" cy="130" r="11" fill="white" stroke="#333" stroke-width="2" />
          <circle cx="404" cy="130" r="11" fill="#888" stroke="#333" />
          <circle cx="548" cy="130" r="11" fill="black" />
          <circle cx="692" cy="130" r="11" fill="#888" stroke="#333" />
          <circle cx="404" cy="100" r="11" fill="#888" stroke="#333" />
          <circle cx="548" cy="100" r="11" fill="#888" stroke="#333" />
          <circle cx="692" cy="100" r="11" fill="#888" stroke="#333" />
          <circle cx="476" cy="70" r="11" fill="white" stroke="#333" stroke-width="2" />
          <circle cx="620" cy="70" r="11" fill="#888" stroke="#333" />
          <circle cx="764" cy="70" r="11" fill="black" />
          <circle cx="908" cy="70" r="11" fill="white" stroke="#333" stroke-width="2" />
          <circle cx="620" cy="40" r="11" fill="#888" stroke="#333" />
          <circle cx="764" cy="40" r="11" fill="#888" stroke="#333" />
          <circle cx="908" cy="40" r="11" fill="#888" stroke="#333" />
          <circle cx="980" cy="40" r="11" fill="white" stroke="#333" stroke-width="2" />
          <circle cx="1124" cy="40" r="11" fill="#888" stroke="#333" />
          <circle cx="1268" cy="40" r="11" fill="black" />
        </svg>
    </div>

    <div class="section-header">2. Functional Map: Root, Tone, Semi-Tone, Blue Note 
    (R, T, S, B)
    </div>
    <div class="swipe-hint">Swipe to see full neck →</div>
    <div class="container">
        <svg width="1300" height="240" viewBox="0 0 1300 240" xmlns="http://www.w3.org/2000/svg">
          <defs>
            <pattern id="stripes" width="4" height="4" patternUnits="userSpaceOnUse" patternTransform="rotate(45)">
              <line x1="0" y1="0" x2="0" y2="4" stroke="#333" stroke-width="2" />
            </pattern>
          </defs>
          <line x1="80" y1="40" x2="80" y2="190" stroke="#000" stroke-width="6" /> 
          <line x1="20" y1="40" x2="1280" y2="40" stroke="#333" stroke-width="0.8" /> 
          <line x1="20" y1="70" x2="1280" y2="70" stroke="#333" stroke-width="1" /> 
          <line x1="20" y1="100" x2="1280" y2="100" stroke="#333" stroke-width="1.2" /> 
          <line x1="20" y1="130" x2="1280" y2="130" stroke="#333" stroke-width="1.5" /> 
          <line x1="20" y1="160" x2="1280" y2="160" stroke="#333" stroke-width="2" /> 
          <line x1="20" y1="190" x2="1280" y2="190" stroke="#333" stroke-width="2.5" /> 
          
          <line x1="152" y1="40" x2="152" y2="190" stroke="#ccc" /> <line x1="224" y1="40" x2="224" y2="190" stroke="#ccc" /> 
          <line x1="296" y1="40" x2="296" y2="190" stroke="#ccc" /> <line x1="368" y1="40" x2="368" y2="190" stroke="#ccc" /> 
          <line x1="440" y1="40" x2="440" y2="190" stroke="#ccc" /> <line x1="512" y1="40" x2="512" y2="190" stroke="#ccc" /> 
          <line x1="584" y1="40" x2="584" y2="190" stroke="#ccc" /> <line x1="656" y1="40" x2="656" y2="190" stroke="#ccc" /> 
          <line x1="728" y1="40" x2="728" y2="190" stroke="#ccc" /> <line x1="800" y1="40" x2="800" y2="190" stroke="#ccc" /> 
          <line x1="872" y1="40" x2="872" y2="190" stroke="#ccc" /> <line x1="944" y1="40" x2="944" y2="190" stroke="#ccc" /> 
          <line x1="1016" y1="40" x2="1016" y2="190" stroke="#ccc" /> <line x1="1088" y1="40" x2="1088" y2="190" stroke="#ccc" /> 
          <line x1="1160" y1="40" x2="1160" y2="190" stroke="#ccc" /> <line x1="1232" y1="40" x2="1232" y2="190" stroke="#ccc" />
          <line x1="1304" y1="40" x2="1304" y2="190" stroke="#ccc" /> 

          <text x="260" y="25" class="label-text black-text" text-anchor="middle">III</text>
          <text x="404" y="25" class="label-text black-text" text-anchor="middle">V</text>
          <text x="548" y="25" class="label-text black-text" text-anchor="middle">VII</text>
          <text x="692" y="25" class="label-text black-text" text-anchor="middle">IX</text>
          <text x="908" y="25" class="label-text black-text" text-anchor="middle">XII</text>
          <text x="1124" y="25" class="label-text black-text" text-anchor="middle">XV</text>
          <text x="1268" y="25" class="label-text black-text" text-anchor="middle">XVII</text>

          <circle cx="50" cy="190" r="11" fill="#888" stroke="#333" /><text x="50" y="194" class="label-text white-text" text-anchor="middle">T</text>
          <circle cx="116" cy="190" r="11" fill="white" stroke="#333" stroke-width="2" /><text x="116" y="194" class="label-text black-text" text-anchor="middle">S</text>
          <circle cx="260" cy="190" r="11" fill="#888" stroke="#333" /><text x="260" y="194" class="label-text white-text" text-anchor="middle">T</text>
          <circle cx="404" cy="190" r="11" fill="black" /><text x="404" y="194" class="label-text white-text" text-anchor="middle">R</text>
          <circle cx="548" cy="190" r="11" fill="white" stroke="#333" stroke-width="2" /><text x="548" y="194" class="label-text black-text" text-anchor="middle">T</text>

          <circle cx="260" cy="160" r="11" fill="#888" stroke="#333" /><text x="260" y="164" class="label-text white-text" text-anchor="middle">S</text>
          <circle cx="404" cy="160" r="11" fill="#888" stroke="#333" /><text x="404" y="164" class="label-text white-text" text-anchor="middle">T</text>
          <circle cx="476" cy="160" r="11" fill="url(#stripes)" stroke="#333" stroke-width="2" /><text x="476" y="164" class="label-text white-text" text-anchor="middle" style="stroke:black; stroke-width:0.3px;">B</text>
          <circle cx="548" cy="160" r="11" fill="#888" stroke="#333" /><text x="548" y="164" class="label-text white-text" text-anchor="middle">T</text>

          <circle cx="260" cy="130" r="11" fill="white" stroke="#333" stroke-width="2" /><text x="260" y="134" class="label-text black-text" text-anchor="middle">S</text>
          <circle cx="404" cy="130" r="11" fill="#888" stroke="#333" /><text x="404" y="134" class="label-text white-text" text-anchor="middle">T</text>
          <circle cx="548" cy="130" r="11" fill="black" /><text x="548" y="134" class="label-text white-text" text-anchor="middle">R</text>
          <circle cx="692" cy="130" r="11" fill="#888" stroke="#333" /><text x="692" y="134" class="label-text white-text" text-anchor="middle">T</text>

          <circle cx="404" cy="100" r="11" fill="#888" stroke="#333" /><text x="404" y="104" class="label-text white-text" text-anchor="middle">S</text>
          <circle cx="548" cy="100" r="11" fill="#888" stroke="#333" /><text x="548" y="104" class="label-text white-text" text-anchor="middle">T</text>
          <circle cx="692" cy="100" r="11" fill="#888" stroke="#333" /><text x="692" y="104" class="label-text white-text" text-anchor="middle">T</text>

          <circle cx="476" cy="70" r="11" fill="white" stroke="#333" stroke-width="2" /><text x="476" y="74" class="label-text black-text" text-anchor="middle">S</text>
          <circle cx="620" cy="70" r="11" fill="#888" stroke="#333" /><text x="620" y="74" class="label-text white-text" text-anchor="middle">T</text>
          <circle cx="764" cy="70" r="11" fill="black" /><text x="764" y="74" class="label-text white-text" text-anchor="middle">R</text>
          <circle cx="908" cy="70" r="11" fill="white" stroke="#333" stroke-width="2" /><text x="908" y="74" class="label-text black-text" text-anchor="middle">S</text>

          <circle cx="620" cy="40" r="11" fill="#888" stroke="#333" /><text x="620" y="44" class="label-text white-text" text-anchor="middle">S</text>
          <circle cx="764" cy="40" r="11" fill="#888" stroke="#333" /><text x="764" y="44" class="label-text white-text" text-anchor="middle">T</text>
          <circle cx="908" cy="40" r="11" fill="#888" stroke="#333" /><text x="908" y="44" class="label-text white-text" text-anchor="middle">T</text>
          <circle cx="980" cy="40" r="11" fill="white" stroke="#333" stroke-width="2" /><text x="980" y="44" class="label-text black-text" text-anchor="middle">S</text>
          <circle cx="1124" cy="40" r="11" fill="#888" stroke="#333" /><text x="1124" y="44" class="label-text white-text" text-anchor="middle">T</text>
          <circle cx="1268" cy="40" r="11" fill="black" /><text x="1268" y="44" class="label-text white-text" text-anchor="middle">R</text>
        </svg>
    </div>

    

</body>
</html>