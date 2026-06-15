---
name: topic-ideation
description: Use when the user wants to turn an early research idea into stronger paper topics by combining the last five years of publication trends, current research or industry progress, venue patterns, and the user's own interests. Best for design, HCI, and CS topic selection, research framing, and choosing among possible project directions.
---

# Topic Ideation

Topic-selection and research-direction skill for turning vague or partial ideas into stronger candidate paper topics.

Use Chinese for explanation unless the user asks otherwise. Keep paper titles, venue names, method names, and technical terms in English when useful.

## Goal

Help the user answer:

- 这个 idea 现在值不值得做？
- 它和过去五年的发文趋势是否一致，还是已经过时？
- 现在行业和研究界推进到哪一步了？
- 这个 idea 应该怎么改，才更像一个可投稿的研究选题？
- 我应该保留、转向，还是拆成几个不同方向？

This skill should not merely output "hot topics". It should synthesize trend evidence, current progress, and the user's own idea into viable research topic options.

## Best Input

The user may provide any combination of:

- a rough idea
- keywords
- a target field such as HCI, design, AI, systems, CSCW, learning sciences, etc.
- a target venue or journal
- a type of paper: empirical, system, method, design research, workshop, journal
- constraints such as time, available data, prototype feasibility, user-study feasibility

If the idea is too vague, first help sharpen it before doing full topic generation.

## Core Workflow

1. Parse the user's idea into:
   - problem area
   - likely users or context
   - proposed intervention or method
   - possible contribution type
2. Ask only for missing high-impact constraints if needed:
   - target field or venue
   - available methods or data
   - timeframe
   - whether the user wants conservative or more novel topics
3. Analyze the last five years of publication trends.
4. Analyze current research and industry progress.
5. Compare the user's idea against:
   - what is already saturated
   - what is still underexplored
   - what appears to be emerging
6. Generate several topic directions, not just one.
7. Rank the directions by fit, novelty, feasibility, and likely paper value.
8. Explain how each topic could be framed into a real paper.

## Always Browse

Always browse for this skill. Do not rely on memory for:

- recent publication trends
- current industry research progress
- venue patterns
- active subtopics
- whether a space is saturated or emerging

Prefer recent and primary or near-primary sources:

- official conference proceedings
- publisher pages
- Google Scholar result patterns
- arXiv when relevant
- lab or company research blogs only when they materially reflect current industry movement

## What To Analyze

### 1. Five-Year Trend

Look at:

- recurring problem spaces
- rising and declining topics
- dominant contribution types
- common methods and evaluation patterns
- what kinds of papers are repeatedly being accepted

### 2. Current Research And Industry Progress

Check:

- whether the core idea is already commonplace
- whether industry has operationalized it
- whether academia is still debating fundamentals
- whether a new technical shift creates fresh openings

### 3. Idea Fit

Judge the user's raw idea on:

- relevance
- novelty
- saturation
- feasibility
- likely venue fit
- whether it sounds like a paper topic or just a product concept

### 4. Topic Generation

Generate multiple candidate topics, typically 3 to 6.

Each candidate should include:

- topic title or working title
- one-sentence topic statement
- why it matters now
- what makes it timely
- what the likely contribution type is
- what evidence or study design it would likely need

## Output Structure

### 一、先给结论：这个 idea 现在值不值得做

- 一句话判断
- 最大机会
- 最大风险
- 更适合保守推进、转向重构，还是大胆做新方向

### 二、你的原始 idea 拆解

- 这个 idea 真正在解决什么问题
- 它属于哪个问题域
- 它更像方法、系统、设计、实证、应用，还是综述想法
- 它当前最模糊的部分在哪里

### 三、过去五年的发文趋势

- 相关主题在过去五年的总体变化
- 哪些方向已经拥挤
- 哪些方向仍在上升
- 常见的研究切入点和 contribution 方式

### 四、当前行业与研究进展

- 学术界推进到什么程度
- 行业界推进到什么程度
- 现阶段最值得关注的变化是什么
- 哪些变化会影响这个 idea 的价值

### 五、你的 idea 与趋势/进展的匹配度

- 哪些部分是顺势的
- 哪些部分已经太常见
- 哪些部分可能形成差异化
- 这个 idea 目前最大的结构性问题是什么

### 六、生成 3-6 个候选选题

For each topic:

- 题目方向
- 核心研究问题
- 为什么值得做
- 可能的贡献类型
- 可能的研究方法/实验设计
- 更适合什么 venue 或论文类型

### 七、候选选题排序

Rank by:

- novelty
- feasibility
- paper potential
- fit with user's idea
- fit with likely venues

### 八、最推荐的下一步

- 最值得优先推进的 1-2 个方向
- 接下来应该补查什么文献
- 应该先做概念验证、原型、用户研究，还是 related work map

## Output Rules

- Do not present trendiness as the same thing as value.
- Distinguish clearly between:
  - evidence-backed trend
  - inference
  - speculation
- Do not generate empty buzzword topics.
- Favor topics that can become real papers, not just fashionable phrases.
- If the user's idea is weak, say so clearly and explain how to rescue it.

## Field Preference

By default, align recommendations with:

- HCI
- design research
- CS

That means:

- value human context, contribution framing, and evidence style
- do not reduce every idea to benchmark chasing
- consider whether the idea fits conference, workshop, journal, or systems-paper cultures differently
