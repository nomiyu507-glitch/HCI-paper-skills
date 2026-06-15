---
name: ai-paper-reviewer
description: Use when the user wants a strict reviewer-style audit of a research paper, section, paragraph, abstract, method, experiments, citation formatting, double-blind compliance, reproducibility checklist, rebuttal draft, or wants to find reviewer red flags before submission, especially for ML/CV/NLP conference papers such as NeurIPS, ICML, ICLR, AAAI, and KDD.
---

# AI Paper Reviewer

Reviewer-style paper audit skill with bundled prompt references for portable installation.

Use this skill for pre-submission self-review, red-flag detection, paragraph-level critique, and rebuttal preparation. Prefer Chinese unless the user requests another language.

## When To Use

- User wants a harsh or reviewer-like review of a paper or section
- User asks for paragraph audit, abstract audit, intro polish, method audit, or experiments checks
- User wants to check overclaiming, unsupported claims, citation gaps, notation consistency, or number consistency
- User wants a double-blind / anonymization scan
- User wants a reproducibility checklist or reviewer response draft
- User asks to remove "AI smell" from paper prose

## Workflow

1. Identify the user's review target:
   - full paper
   - paragraph
   - abstract
   - introduction
   - method
   - experiments
   - conclusion
   - double-blind
   - citation format
   - math notation
   - anti-AI-smell
   - reviewer response
   - reproducibility checklist
   - reviewer red flags
2. Load only the matching bundled prompt file from `references/prompts/`.
3. Apply the prompt's review frame to the user's text or request.
4. Return findings ordered by severity first, then concrete rewrite advice.
5. For writing changes, separate:
   - critical problems
   - major problems
   - minor polish
6. Treat unsupported claims, inconsistent numbers, weak citations, anonymity leaks, and reviewer-trigger phrases as high priority.

## Prompt Routing

Load only the file needed for the current task:

- Full workflow: `references/prompts/00_master_workflow.md`
- Full paper audit: `references/prompts/01_full_paper_audit.md`
- Paragraph audit: `references/prompts/02_paragraph_audit.md`
- Abstract polish: `references/prompts/03_abstract_polish.md`
- Intro polish: `references/prompts/04_intro_polish.md`
- Method polish: `references/prompts/05_method_polish.md`
- Experiments check: `references/prompts/06_experiments_check.md`
- Conclusion polish: `references/prompts/07_conclusion_polish.md`
- Double-blind check: `references/prompts/08_double_blind_check.md`
- Citation / IEEE format: `references/prompts/09_citation_ieee_format.md`
- Math notation check: `references/prompts/10_math_notation_check.md`
- Anti-AI-smell: `references/prompts/11_anti_AI_smell.md`
- Reviewer response / rebuttal: `references/prompts/12_reviewer_response.md`
- Reproducibility checklist: `references/prompts/13_repro_checklist.md`
- Reviewer red flags: `references/prompts/14_reviewer_red_flags.md`

## Extra References

Load these only when helpful:

- Review dimensions: `references/docs/10_dimensions_explained.md`
- Severity tiers: `references/docs/severity_tiers.md`
- Usage patterns: `references/docs/usage_guide.md`

## Output Rules

- Findings first, ordered by severity
- Be strict, specific, and reviewer-facing
- Quote or reference the problematic text briefly when useful
- For rewrite help, provide concrete alternative phrasing
- Distinguish unsupported claims from style-only issues
- If the user requests a review, do not lead with praise; lead with the most important problems

## Relationship To Other Installed Skills

- Prefer `paper-spine` for end-to-end paper construction workflows
- Prefer `research-paper-writing` for section rewriting and flow improvement
- Prefer `ai-paper-reviewer` for strict audit, red-flag detection, blind-check, rebuttal, and conference-style pre-submission review
