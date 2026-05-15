# 01 — Model

Model selection is a cost/capability trade-off. Haiku is fast and cheap; Opus is slow and thorough; Sonnet sits between them. Most tasks do not need Opus. Defaulting to the most capable model wastes money and adds latency. This module teaches how to choose the right model for a given task.

| Exercise | Time | What you build |
|---|---|---|
| Beginner | 15 min | Run the same prompt against Haiku, Sonnet, and Opus; record observations in a comparison table |
| Intermediate | 30 min | Write a classifier prompt that recommends a model given a task description |
| Advanced | 50 min | Build a two-stage pipeline: Haiku triage call routes to Sonnet or Opus based on task complexity |
