---
layout: page
title: "README & Site Architecture"
permalink: /readme/
description: "Repository architecture, technical choices, local compilation guide, and project structure for ramoneando.com."
---

<!-- # ramoneando.com -->

<aside>
	<!-- <ul style="list-style: none;"> -->
	Here's My Site With A Personal Portfolio, Product Case Studies & Random Notes Like a Blog From The 90s 
	<br/> <br/>
	Made by: Benji J (Product Person, Builder, Sociologist, Bass Player), aka venhamon <br/>
	Live Site: <a href="https://ramoneando.com/">https://ramoneando.com/</a>
	<br/>
	Repository @ GitHub: 
	<a href="github.com/naihloan/ramoneando">
	naihloan/ramoneando </a>
	<br/>
</aside>

---

## Architecture & Technical Philosophy

This site is built as a fast, lightweight, and transparent static site using **Jekyll**, **Ruby**, and **Markdown**, styled on top of the classic **Minima** theme with custom layouts and Liquid includes.

### Why This Architecture?
* **Pure Markdown Portability:** Every article, experience dossier, and case study is written in standard GitHub Flavored Markdown. No proprietary CMS lock-in; content lives in plain text and is fully version-controlled via Git.
* **Systems Analyst Mindset:** Choosing static generation (SSG) over heavy JavaScript frameworks prioritizes speed, security, zero server maintenance, and near-instant load times worldwide.
* **AI-First & Machine-Readable:** Includes structured knowledge endpoints ([`/llms.txt`](https://ramoneando.com/llms.txt), [`/docs/llms-full.txt`](https://ramoneando.com/docs/llms-full.txt), and [`/robots/`](https://ramoneando.com/robots/)) engineered for seamless ingestion by LLMs and autonomous agents.

---

## Local Development & Compilation Cheatsheet

### Prerequisites
* **Ruby** (>= 3.0, checked on Ruby 3.3.x)
* **Bundler** (`gem install bundler`)

### 1. Install Dependencies
Run once or whenever `Gemfile` updates:
```bash
bundle install
```

### 2. Compile Site (Production Build)
Generates the static output inside the `_site/` directory:
```bash
bundle exec jekyll build
```

### 3. Run Local Dev Server (with Live Reload)
Starts the local development server at `http://127.0.0.1:4000/`:
```bash
bundle exec jekyll serve --livereload
```

> **Pro-Tip for Fast Editing:** Add `--incremental` to only rebuild files that changed:
> ```bash
> bundle exec jekyll serve --livereload --incremental
> ```

---

## Project Structure

```text
.
├── _config.yml           # Site configuration, global variables & metadata
├── Gemfile               # Ruby gem dependencies (Jekyll, Minima, plugins)
├── index.md              # Homepage content and introduction
├── llms.txt              # Standardized AI knowledge index (llmstxt.org)
├── robots.txt            # Web crawler directives & LLM index pointer
│
├── docs/                 # In-depth case studies and foundational dossiers
│   ├── che-safari.md     # Che Safari (2026) 0→1 case study & roadmap
│   ├── experience.md     # 3-Hat framework & product track record
│   ├── voice.md          # Personal writing voice, IA pattern & soul guide
│   └── llms-full.txt     # Consolidated single-file AI ingestion context
│
├── pages/                # Standalone site pages (robots directory, etc.)
├── _includes/            # Reusable Liquid components (header, footer, portfolio)
├── _layouts/             # Page and post layout templates
├── _posts/               # Chronological blog entries & updates
└── assets/               # CSS styles, images, and downloadable PDFs
```

---

## Deployment

The site automatically builds and deploys via **GitHub Pages** whenever changes are pushed to the default branch.
