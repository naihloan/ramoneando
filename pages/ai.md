---
title: AI
permalink: /ai/
layout: page
sitemap_priority: 0.7
description: Benji’s take on AI
---

<br/>

## My opinionated take on AI

AI is, in my opinion, great as an idea generator, like ancient greek oracles. 

Answers tend to be more on the cryptic and ambiguous side; rather than accurate, precise and predictable. Results can be quite artistic, or even guesswork or hallucinations, but can still be useful to inspire getting into new territories, for strategizing and taking steps that have the highest impact when you want to do something new, or understand a novel thing quickly, even if not always based on hard evidence.

I try to avoid content that is entirely produced by AI both in writing and in reading. Please don't make me read your AI content without telling me: it feels alienating. Or maybe that's just me. Maybe you can surprise me, that can be a happy moment.

| ![The Oracle of Delphi Entranced by Heinrich Leutemann](../assets/images/delphi--by-Heinrich-Leutemann.png) | 
|:--:| 
| *Picture of the The Oracle of Delphi Entranced by Heinrich Leutemann, circa 1880* |

<br/>

## How I use, and read, on AI

I do believe that certain kinds of prompts with AI can be very useful and I'd like to tailor my requests in a way that can be useful to myself and others. I like to see how others do prompting. So maybe sharing my core prompts can help. See my [AGENTS.md](/agents/). 

<!--
This is what I usually say when interacting with AI:

<div class="copy-card">
  <div id="copy2">
    <!--
Product Manager | Bassist | AI tinkerer  
Open to PM roles @ Series A startups (wellbeing · social impact · media)  
venhamon@gmail.com


> Ask me more questions to move things further forward  
<br/>
> What do you think about X if you'd need to analyze objectively with pros and cons?  
<br/>
> What would you argue if you'd need to take one stance? and then what would you argue if you'd take an opposite, or alternative stance?  
<br/>
> No need to tell me your whole process, or get back to things we're not discussing now, but it seems a good idea to ask about them again once in a while. if I don't respond after several attempts perhaps best to drop and then review weeks later, and ask to drop or snooze.  
<br/><br/>
correct me if I'm wrong of course, now and always 
<br/><br/>
here's my <br/>
linkedin: https://linkedin.com/in/bj-pm <br/>
website: https://ramoneando.com/ 
<br/><br/> 
thanks! you rule! 
  </div>
  <button onclick="copyThis('copy2')" class="copy-btn">Copy</button>
  <span id="copied2" class="copied-msg">Copied!</span>
</div>
-->

<style>
.copy-card {
  background: #e0f2fe;
  border-left: 5px solid #0d6efd;
  padding: 20px;
  border-radius: 0 8px 8px 0;
  margin: 2em 0;
  position: relative;
  font-size: 1.02rem;
  line-height: 1.6;
}
.copy-btn {
  position: absolute;
  top: 12px;
  right: 12px;
  background: #0d6efd;
  color: white;
  border: none;
  padding: 6px 12px;
  border-radius: 6px;
  font-size: 0.8rem;
  cursor: pointer;
}
.copy-btn:hover { background: #0b5ed7; }
.copied-msg {
  position: absolute;
  top: 14px;
  right: 100px;
  color: #0b5ed7;
  font-weight: 600;
  opacity: 0;
  transition: opacity 0.3s;
}
@media (prefers-color-scheme: dark) {
  .copy-card { 
    background: #172554; 
    border-left-color: #3b82f6; 
    color: #dbeafe; 
  }
  .copied-msg { color: #60a5fa; }
}
</style>

<script>
function copyThis(id) {
  const text = document.getElementById(id).innerText;
  navigator.clipboard.writeText(text).then(() => {
    const msg = document.getElementById('copied'+id.slice(4));
    msg.style.opacity = '1';
    setTimeout(() => msg.style.opacity = '0', 2000);
  });
}
</script>

<!--
## Tools I use

* ollama
* grok 
* openAI 
* gemini
* perplexity 
* claude 
* also regular check on builder apps 
-->

<br/>
## Books on AI I've enjoyed so far

* Player Piano. By Kurt Vonnegut.
* The Nvidia Way: Jensen Huang and the Making of a Tech Giant. By Tae Kim
* Co-Intelligence: Living and Working with AI. By Ethan Mollick. Excerpt:

> General Purpose Technologies aren’t just about work; they touch every aspect of our lives. They change how we teach, entertain ourselves, interact with other people, and even our sense of self. Schools are in an uproar over the future of writing, based on the first generation of AIs, and AI tutors may finally radically change how we educate students. [...] And all of this ignores the larger issue, the alien in the room. We have created something that has convinced many smart people that it is, in some way, the spark of a new form of intelligence. An AI that has blown through both the Turing Test (Can a computer fool a human into thinking it is human?) and the Lovelace Test (Can a computer fool a human on creative tasks?).  
-- Quotation from Ethan Mollick: _Co-Intelligence Living and Working With AI_. Penguin Publishing Group (2024) (pp. xvii-xviii). Kindle Edition.


<br/>

## Do you want to discuss AI and product with me?

<a href="http://calendly.com/venhamon" target="_blank" class="bootstrap-primary-btn" aria-label="Contact me">
Schedule a Meet and Greet
</a>


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

---

###### This is an [/ai page](https://www.bydamo.la/p/ai-manifesto). You can create one on your website too. 

###### If you do, consider [listing it](https://docs.google.com/forms/d/e/1FAIpQLSe6UQgjY8h4UGKs6P0A3Lk_YWOSKCiZzZ93rNOH0pf8qYCACA/viewform) on this [public database](https://slashai.page/).


###### Last update: 2025-11-26
