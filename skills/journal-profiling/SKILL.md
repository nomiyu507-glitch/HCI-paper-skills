---
name: journal-profiling
description: Use when the user wants a deep profile of a target journal before submission, including what kinds of papers it has published in recent years, recurring topics and keywords, preferred methods and contribution styles, writing tendencies, and whether a manuscript fits the journal's implicit preferences.
---

# Journal Profiling

Deep journal-analysis skill for pre-submission profiling. Use this when the user has a target journal in mind and wants to understand its recent publication patterns, topical preferences, methodological tendencies, stylistic expectations, and likely fit for a manuscript.

Prefer Chinese for explanations unless the user asks otherwise. Keep journal names, article titles, keywords, and method names in their original English where helpful.

## Goal

Help the user answer questions such as:

- 这个期刊过去几年到底常发什么类型的文章？
- 它偏好的关键词、主题和问题域是什么？
- 它更喜欢方法论文、系统论文、应用论文、综述，还是实证研究？
- 它喜欢什么写作风格、贡献表达和实验支撑方式？
- 我的论文和它的真实口味到底合不合？

This skill should go beyond journal scope statements. It should infer the journal's de facto preferences from recent publications.

## Core Use Cases

- user already has one target journal and wants a deep fit analysis
- user wants to understand a journal before preparing a submission
- user wants to compare 2-3 target journals by style and recent topic preference
- user wants to know whether a draft fits a journal's recent publication trend
- user wants keyword, topic, method, and article-type patterns from the last few years

## Workflow

1. Confirm the target journal and the profiling window.
   - Default to the last 3 years.
   - Expand to 5 years if the journal is slow-moving, niche, or the user asks.
2. Verify the exact journal identity and official website.
3. Collect recent paper metadata from reliable sources:
   - official journal site
   - publisher archive
   - Crossref / DOI pages
   - indexing pages when useful
4. Build a journal profile from actual recent publications, not only Aims & Scope text.
5. Extract patterns:
   - article types
   - recurring topics
   - frequent keywords
   - method tendencies
   - evidence style
   - writing and framing tendencies
6. Compare the user's manuscript topic or abstract against these patterns when provided.
7. Output a structured profile plus a fit judgment with caveats.

## What To Analyze

### 1. Basic Journal Identity

- official journal name
- publisher
- field / subfield
- verified publication status
- if available and reliably verified: CCF / SCI / CAS / JCR / CORE or similar classification

If any ranking or index information cannot be verified, mark it `未核实`.

### 2. Recent Publication Mix

Analyze the last 3 years by default:

- article types: empirical, method, system, review, perspective, dataset, application, case study, design artifact, etc.
- dominant problem areas
- common research contexts
- whether the journal appears broad or concentrated

### 3. Keyword And Topic Preferences

Extract:

- recurring author keywords
- recurring title phrases
- recurring topic clusters
- topic drift across recent years if visible

Do not merely list keywords. Group them into interpretable themes.

### 4. Method And Evidence Preferences

Look for tendencies such as:

- quantitative vs qualitative vs mixed methods
- benchmark-heavy vs field-study-heavy
- theory-driven vs engineering-driven
- small-scale case studies vs broader evaluations
- strong ablation / comparison culture vs lighter evidence standards

### 5. Writing And Contribution Style

Infer likely journal preferences from recent papers:

- what counts as a contribution there
- whether papers foreground theory, system, design implications, or empirical findings
- whether introductions are problem-driven, application-driven, or literature-gap-driven
- whether papers tend to be conservative or promotional in tone

### 6. Submission Fit

If the user provides a title, abstract, or draft summary, assess:

- topical fit
- methodological fit
- evidence fit
- style fit
- novelty-positioning fit

Then give:

- strong fit
- possible fit with reframing
- weak fit

## When To Browse

Always browse for this skill. Do not rely on memory for:

- recent publication lists
- journal rankings
- indexing
- publisher pages
- acceptance status or current journal metadata

Prefer recent and primary sources.

## Output Structure

### 一、期刊基本信息

- 期刊名
- publisher
- 所属领域
- 近似定位与影响力
- 若能可靠核实：CCF / SCI / CAS / JCR / CORE 等
- 不能确认的内容标注 `未核实`

### 二、先给结论：这个期刊近几年到底偏好什么

- 一句话总结它近三年的主要发文风格
- 最常见的论文类型
- 最明显的主题偏好
- 对什么样的稿件最友好

### 三、近几年发文类型画像

- 论文类型分布
- 主要问题域
- 是否偏方法 / 系统 / 实证 / 应用 / 综述
- 是否有明显稳定风格

### 四、关键词与主题趋势

- 高频关键词
- 高频主题簇
- 近年变化趋势
- 哪些方向明显更受欢迎

### 五、方法与证据偏好

- 常见方法路径
- 常见实验/评估方式
- 偏好的证据风格
- 是否强调大样本、真实场景、ablation、deployment、user study 等

### 六、写作与贡献表达偏好

- 常见 contribution framing
- 引言常见写法
- 讨论部分常见风格
- 是否偏保守、偏理论、偏应用或偏工程

### 七、对你的稿件是否匹配

If the user provides manuscript information:

- 匹配点
- 不匹配点
- 若想提高命中率，建议怎么改 framing / method / experiments / writing

If no manuscript info is provided, say what kinds of papers are likely to fit.

### 八、投稿策略建议

- 是否值得优先考虑
- 更适合作为主投、保底，还是备选
- 投稿前最应该补强的部分

## Output Rules

- Use evidence from recent journal publications.
- Distinguish clearly between verified facts and inferred patterns.
- Do not overclaim from too few sampled papers; disclose sample limitations.
- If the journal archive is incomplete or inaccessible, say so explicitly.
- Prefer theme clusters over raw keyword dumps.

## Sampling Guidance

- Start from the most recent 2-3 years.
- Aim for enough papers to infer patterns, but avoid pretending exhaustive coverage if not feasible.
- If only a partial sample is used, clearly state the sample size and limitation.
