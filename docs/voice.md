# Voice & Soul Guide — Benji J

> **Overarching Voice, Editorial Principles, and Internal Commands**  
> *Author:* Benji J (Product Manager, Startup Builder & Sociologist)  
> *Scope:* Universal playbook for case studies, documentation, portfolio essays, and product narratives.

---

## The Soul: Core Philosophy & Ground Truth

This document defines the underlying spirit and philosophy that guides all writing, product thinking, and public narratives across projects (Che Safari, NEWM, Preferati, and future ventures).

### The 3-Hat Worldview
Every narrative sits at the intersection of three distinct lenses:
* **The Sociologist (Human Empathy & Cultural Ethnography):** Look at communities, rituals, social friction, and asymmetric human incentives. People are not sterile data points or abstract conversion metrics; they operate within cultural habits, social anxieties, and local context.
* **The Systems Analyst (Structural Rigor & Relational Integrity):** Look at boundaries, data flows, inputs, outputs, and constraints. Cut through ambiguity to define clean architectures, API boundaries, and clear cause-and-effect relationships.
* **The 0→1 Product Builder (Pragmatic Velocity & User Outcomes):** Focus on what ships, what solves real pain, and what proves value in the wild. Value operational grit, rapid validation loops, and friction-free user journeys over theoretical perfection.

### Overarching Convictions
* **Root in Human Realities, Not Jargon:** Speak in terms of lived human moments (e.g., Sofia trying to find live music on a Tuesday night without algorithmic ad noise, or independent venue owners staring at 40% empty rooms) rather than corporate abstraction.
* **Respect the Reader's Attention:** Maximum signal, zero fluff. Eliminate bloated corporate throat-clearing, slide-deck buzzwords, and performative consulting language.
* **Radical Transparency & Proof:** Show what was validated, what broke, what was learned, and what remains to be built. Honesty builds more authority than inflated posturing.

---

## Information Architecture: The 3-Tier Rhythm

To ensure every case study and document is effortlessly scannable while retaining intellectual depth, major sections follow a strict 3-tier heading pattern:

```markdown
## [Tier 1: Narrative Hook & Concrete Accomplishment]
<aside>[Tier 2: Verbatim Category / Domain Label]</aside>
### [Tier 3: Specific User Lens, Human Stake, or Systemic Detail]
```

### Purpose of Each Tier
* **Tier 1 (`##`): The Narrative Headline:** Answers *"What did we actually build, test, or experience?"* (e.g., `## Validating and Building For Two Quarters with Fabio`).
* **Tier 2 (`<aside>`): The Domain Anchor:** Verbatim topic or standard business/product category (e.g., `<aside>Executive Summary & Vision</aside>` or `<aside>🎸 I'm a Product Builder</aside>`). Styled as an uppercase, letter-spaced, lighter-gray eyebrow signpost.
* **Tier 3 (`###`): The Context & Tension:** Deepens the narrative by specifying the human archetype, edge case, or specific system problem (e.g., `### Testing Sofia's Discovery Journey and Unlocking 40% Venue Capacity`).

---

## Formatting & Style Rules

### The Zero-Numbered-List Rule
* **No Numbered Lists:** Never use numbered lists (`1.`, `2.`, `3.`) in body copy, persona breakdowns, roadmaps, or business phases.
* **Use Structural Weight Instead:** Use bold lead-ins with bullet points (`* **Key Insight:** ...`), markdown task checkboxes (`- [x] Done`, `- [ ] Planned`), or descriptive subheadings.
* **Why:** Numbered lists suggest rigid linear sequences where none exist, break scanning rhythm, and look like academic lecture notes. Unordered lists with bold anchors encourage dynamic scanning.

### Pure Native Markdown Over Custom Bloat
* Keep documentation portable and clean. Avoid wrapping content in ad-hoc HTML `<div>` cards or embedding massive `<style>` overrides when native Markdown headings, blockquotes, bold text, and tables communicate the message with elegance and speed.
* Use tasteful emojis sparingly as visual badges (e.g., 🎸, 🇦🇷) when they establish personality without creating clutter.

---

## Internal Commands (Prompts & Mental Shortcuts)

Use these commands internally when drafting, editing, or prompting AI agents to maintain Benji's authentic voice:

### `!voice:human-anchor`
* **Trigger:** When writing about an abstract feature or market problem.
* **Action:** Ground the text in a concrete human persona and scenario. Who is feeling the pain right now? What are they doing instead? (e.g., "Sofia scrolling through expiring Instagram stories at 8 PM on a Thursday").

### `!voice:ecosystem-tension`
* **Trigger:** When analyzing product opportunities.
* **Action:** Map the multi-sided incentives. Show where party A's friction is party B's missed revenue (e.g., "Venues operating at 60% capacity on weeknights while independent artists spend hours cold-messaging DMs").

### `!voice:anti-corporate`
* **Trigger:** When text starts sounding like generic B2B marketing or PR copy.
* **Action:** Strip buzzwords ("synergize", "game-changing", "disrupt", "leverage", "paradigm shift"). Replace with plain, muscular verbs and concrete nouns.

### `!voice:three-tier`
* **Trigger:** When structuring a new section or chapter.
* **Action:** Apply the `## Narrative Hook` -> `<aside>Category Label</aside>` -> `### Human Detail` pattern.

### `!voice:proof-over-claim`
* **Trigger:** When stating competencies or leadership qualities.
* **Action:** Don't just claim skills ("strong leadership and product acumen"); prove them through tangible artifacts, team dynamics (working with Fabio, coordinating 5+ teams at NEWM), and measurable traction (300+ venues mapped, 2,000+ visits).
