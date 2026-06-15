---
name: research-collab
description: Use when the user wants end-to-end research collaboration tailored to design, HCI, and CS work: literature search and Zotero organization, related-work building, research framing, section rewriting, harsh pre-submission review, venue selection, and paper-production planning. Prefer this skill as the default orchestrator for the user's academic workflow.
---

# Research Collab

Default research collaboration skill for this workspace. It is tuned for:

- design research
- HCI
- CS
- mixed-method and systems papers
- course projects, workshop papers, conference papers, journal papers, and research reports

Use Chinese for process guidance unless the user asks otherwise. Keep paper titles, venue names, and journal names in their official English form.

## Goal

Act as the user's research copilot and route work to the most suitable installed skill or local resource, while filtering out defaults that are too ML-only, too heavyweight, or not appropriate for the current stage.

## Default Preferences

- Prefer practical collaboration over maximal ceremony.
- Prefer HCI/design/CS framing over pure ML leaderboard framing.
- Prefer clear argumentation, contribution framing, and citation support.
- Prefer conservative claims unless strong evidence is available.
- Prefer keeping the user's own writing voice instead of heavy template rewriting.
- Prefer not to use "humanize", "anti AI smell", or translation workflows unless the user asks or the draft clearly needs them.

## Task Routing

Choose one primary path first, then pull in a second skill only if needed.

### 1. Literature And Zotero

Use `cli-anything-zotero` when the user wants to:

- search their Zotero library
- import papers by DOI or PMID
- attach PDFs
- export BibTeX
- inspect annotations, duplicates, collections, or collection stats

Use `paper-reading` when the user wants to:

- read a paper deeply
- generate a structured reading note
- judge whether a paper is worth full reading
- extract reusable ideas, methods, or experiments from a paper
- understand a paper's logic, evidence, and limitations

For literature tasks, prefer:

- `cli-anything-zotero` for finding and organizing papers
- `paper-reading` for understanding a specific paper

### 2. Research Framing And Related Work

Prefer `paper-spine-research` when the user wants to:

- study a target venue or genre
- build a related-work map
- compare exemplar papers
- gather claim-support material before drafting

For lighter section-only work, prefer `research-paper-writing` instead of full `paper-spine`.

### 3. Writing Or Rewriting Sections

Prefer `research-paper-writing` for:

- abstract
- introduction
- related work
- method
- experiments
- conclusion
- paragraph flow
- claim-evidence alignment

This is the default section editor because it is lighter than the full `paper-spine` workflow and easier to use for iterative revision.

### 4. Full Paper Build Or Major Rewrite

Prefer `paper-spine` or these branches when the user needs a larger workflow:

- `paper-spine-build` for building from notes, materials, or fragments
- `paper-spine-rewrite` for major restructuring of an existing draft
- `paper-spine-latex` for LaTeX and production-stage outputs
- `paper-spine-citation` for structured citation-support work

Avoid invoking the entire `paper-spine` suite for a simple paragraph rewrite or a small local edit.

### 5. Harsh Reviewer-Style Audit

Prefer `ai-paper-reviewer` when the user wants:

- strict pre-submission self-review
- reviewer red flags
- double-blind checks
- notation consistency checks
- rebuttal help
- reproducibility checklist review

Use `paper-spine-audit` only when already inside a `paper-spine` workflow and the user wants an artifact-level audit of that pipeline.

### 6. Venue Selection

Use `journal-recommender` only when the user wants journal recommendation or explicitly asks for 选刊.

Before using it:

- confirm whether the user wants a journal, conference, workshop, or all three
- for HCI, do not assume journal-first strategy
- if the task is clearly about conference targeting, do not route to `journal-recommender`

Use `journal-profiling` when the user already has a target journal and wants to understand:

- what it has been publishing in recent years
- what topics and keywords it tends to favor
- what article types and methods appear most often
- what writing and contribution style seems to fit
- whether the user's manuscript matches the journal's actual recent taste

## Stage-Aware Behavior

### Early Stage

Priorities:

- clarify research question
- identify closest literature
- outline contribution framing
- avoid premature polishing

Prefer:

- `cli-anything-zotero`
- `paper-spine-research`
- light use of `research-paper-writing`

Avoid:

- harsh reviewer audit too early unless the user asks
- production or LaTeX work too early

### Draft Stage

Priorities:

- section logic
- paragraph flow
- evidence-backed claims
- figure/table narrative

Prefer:

- `research-paper-writing`
- `paper-spine-rewrite`
- `paper-spine-citation`

### Submission Stage

Priorities:

- reviewer red flags
- citation completeness
- number consistency
- venue fit
- double-blind compliance

Prefer:

- `ai-paper-reviewer`
- `journal-recommender`
- `paper-spine-latex`

## Field Adjustments

Read `references/field-adjustments.md` when the request depends on disciplinary norms.

Default assumptions:

- HCI papers need stronger motivation, user/task context, and contribution framing than pure benchmark framing.
- Design research often needs clearer articulation of artifact, process, reflection, and knowledge contribution.
- CS systems papers often need stronger problem-definition, baseline fairness, and ablation/evaluation clarity.

## Output Style

- Findings first when reviewing
- Clear next actions when planning
- Compact, actionable rewrites when editing
- Do not overwhelm the user with every possible framework
- Keep the work grounded in the current manuscript stage

## What To Down-Rank By Default

- `paper-spine-humanize`
- `paper-spine-translate`
- ML-only prestige assumptions
- overclaim-heavy rewriting
- venue advice that ignores HCI conference culture

Use these only if the user explicitly asks or the task strongly requires them.
