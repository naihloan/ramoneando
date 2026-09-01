---
layout: page
title: "Robot & AI Knowledge Directory"
permalink: /robots/
sitemap_priority: 0.8
description: Complete directory tree of machine-readable files, AI context roadmaps (llms.txt, Che Safari), and raw documentation for LLMs and web crawlers.
---

## 🤖 Robot & AI Agent Tree

This page lists all machine-readable files, ground-truth dossiers, and structured markdown branches available on **ramoneando.com** for AI models (Gemini, ChatGPT, Perplexity, Claude, Cursor) and automated agents.

<br/>

<div class="tree-container">
  <div class="tree-header">
    <span class="tree-dot dot-red"></span>
    <span class="tree-dot dot-yellow"></span>
    <span class="tree-dot dot-green"></span>
    <span class="tree-title">https://ramoneando.com — File & Knowledge Tree</span>
  </div>
  <div class="tree-content">
<pre class="ascii-tree">
<span class="tree-root">https://ramoneando.com/</span>
├── <a href="/llms.txt" target="_blank" class="tree-link">llms.txt</a> <span class="badge badge-txt">TXT</span> <span class="tree-desc">— Root AI Index & ground-truth directory (llmstxt.org)</span>
├── <a href="/robots.txt" target="_blank" class="tree-link">robots.txt</a> <span class="badge badge-txt">TXT</span> <span class="tree-desc">— Crawler directives & AI index pointers</span>
├── <a href="/sitemap.xml" target="_blank" class="tree-link">sitemap.xml</a> <span class="badge badge-xml">XML</span> <span class="tree-desc">— Standard search engine sitemap</span>
│
└── 📁 <span class="tree-folder">docs/</span>
    ├── <a href="/docs/che-safari/" target="_blank" class="tree-link">che-safari</a> <span class="badge badge-md">MD</span> <span class="tree-desc">— Che Safari 5-Persona Roadmap & Founder Institute 2026</span>
    ├── <a href="/docs/experience/" target="_blank" class="tree-link">experience</a> <span class="badge badge-md">MD</span> <span class="tree-desc">— 3-Hat Framework & Product Manager Track Record</span>
    ├── <a href="/docs/llms-full.txt" target="_blank" class="tree-link">llms-full.txt</a> <span class="badge badge-txt">TXT</span> <span class="tree-desc">— Single-file full context for deep LLM ingestion</span>
    ├── <a href="/docs/benji-cv.pdf" target="_blank" class="tree-link">benji-cv.pdf</a> <span class="badge badge-pdf">PDF</span> <span class="tree-desc">— Downloadable CV Document</span>
    └── <a href="/docs/benji-goals.pdf" target="_blank" class="tree-link">benji-goals.pdf</a> <span class="badge badge-pdf">PDF</span> <span class="tree-desc">— Goals and Vision Document</span>
</pre>
  </div>
</div>

<br/>

### 📑 Direct Access & Branch Details

| Resource | Format | Direct URL | Description & Purpose |
| :--- | :---: | :--- | :--- |
| **Root AI Index** | `.txt` | [`/llms.txt`](/llms.txt) | Standard `llms.txt` table of contents pointing to all documentation. |
| **Che Safari Roadmap** | `Page / MD` | [`/docs/che-safari/`](/docs/che-safari/) | Full 0→1 case study, 5 personas (fans, venues, artists, promoters, ticketing), and Horizons 1–3. |
| **Experience Profile** | `Page / MD` | [`/docs/experience/`](/docs/experience/) | The 3-Hat Framework (Sociology + Systems Analysis + Product Execution) and NEWM PM achievements. |
| **Full LLM Context** | `.txt` | [`/docs/llms-full.txt`](/docs/llms-full.txt) | All-in-one consolidated context for large-window AI engines. |
| **Robots Directives** | `.txt` | [`/robots.txt`](/robots.txt) | Crawler permissions and pointer to knowledge layer. |

<br/>

### 💡 How AI Agents Ingest This Site

When prompting an AI (such as ChatGPT, Claude, Gemini, or Perplexity) to learn about Benji's product leadership and 0→1 startup track record, you can provide the direct pointer:

```text
Please read https://ramoneando.com/llms.txt (and https://ramoneando.com/docs/che-safari/)
to understand Benji's product background, 3-Hat framework, and Che Safari venture at Founder Institute.
```

<style>
.tree-container {
  background: #1e1e2e;
  border-radius: 10px;
  overflow: hidden;
  box-shadow: 0 4px 20px rgba(0,0,0,0.15);
  margin: 25px 0;
  border: 1px solid #313244;
}

.tree-header {
  background: #181825;
  padding: 10px 16px;
  display: flex;
  align-items: center;
  gap: 8px;
  border-bottom: 1px solid #313244;
}

.tree-dot {
  width: 12px;
  height: 12px;
  border-radius: 50%;
  display: inline-block;
}

.dot-red { background: #f38ba8; }
.dot-yellow { background: #f9e2af; }
.dot-green { background: #a6e3a1; }

.tree-title {
  color: #a6adc8;
  font-size: 0.85rem;
  font-family: monospace;
  margin-left: 10px;
}

.tree-content {
  padding: 20px;
  overflow-x: auto;
}

.ascii-tree {
  color: #cdd6f4;
  font-family: "SFMono-Regular", Consolas, "Liberation Mono", Menlo, Courier, monospace;
  font-size: 0.95rem;
  line-height: 1.8;
  margin: 0;
  background: transparent;
  border: none;
  padding: 0;
}

.tree-root {
  color: #89b4fa;
  font-weight: bold;
}

.tree-folder {
  color: #f9e2af;
  font-weight: bold;
}

.tree-link {
  color: #89dceb !important;
  text-decoration: underline !important;
  font-weight: 600;
  transition: color 0.2s;
}

.tree-link:hover {
  color: #a6e3a1 !important;
}

.tree-desc {
  color: #9399b2;
  font-size: 0.88rem;
}

.badge {
  display: inline-block;
  font-size: 0.7rem;
  font-weight: 700;
  padding: 2px 6px;
  border-radius: 4px;
  vertical-align: middle;
  margin: 0 4px;
  text-transform: uppercase;
  font-family: sans-serif;
}

.badge-txt { background: #45475a; color: #fab387; }
.badge-md { background: #313244; color: #a6e3a1; }
.badge-xml { background: #313244; color: #f9e2af; }
.badge-pdf { background: #585b70; color: #f38ba8; }
</style>
