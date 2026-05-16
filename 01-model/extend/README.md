# 01-model / Extend — Build a triage pipeline

**Objective:** Build a two-stage pipeline. Route tasks by complexity. Measure latency and estimated cost.

**Concept:** Turn the Apply routing heuristic into a live pipeline. Stage 1 uses Haiku to classify the task. Stage 2 runs the task on the recommended model. This beats always using Opus for simple tasks. For complex tasks, the Haiku overhead is negligible.

**Time:** 50 minutes

## Steps

1. Read `01-model/apply/routing-prompt.md`. You will use this as Stage 1.

2. Design the pipeline:
   - Stage 1: pass the task description through the classifier on Haiku. Parse the recommendation (haiku/sonnet/opus).
   - Stage 2: run the actual task on the recommended model.

3. Write the pipeline as a bash script at `pipeline.sh` in this directory. The script should:
   - Accept a task description as its argument
   - Run Stage 1 (Haiku classifier)
   - Parse the recommended model from the output
   - Run Stage 2 on the recommended model
   - Print: task, routed model, Stage 1 latency, Stage 2 latency, total latency

4. Test on three tasks:
   - A simple task (should route to Haiku): "List the HTTP status codes for 4xx errors."
   - A moderate task (should route to Sonnet): "Review this function for edge cases: `function divide(a, b) { return a / b; }`"
   - A complex task (should route to Opus): "Design a distributed rate limiter for a multi-region API with 100k RPS."

5. Compare total latency and estimated cost against an Opus-only baseline.

## Expected output

```
── Pipeline run ───────────────────────────────────────────────
Task:          "List the HTTP status codes for 4xx errors."
Routed to:     haiku
Stage 1 time:  0.8s
Stage 2 time:  0.6s
Total:         1.4s

Task:          "Review this function for edge cases..."
Routed to:     sonnet
Stage 1 time:  0.9s
Stage 2 time:  3.2s
Total:         4.1s

Task:          "Design a distributed rate limiter..."
Routed to:     opus
Stage 1 time:  0.8s
Stage 2 time:  18.4s
Total:         19.2s
──────────────────────────────────────────────────────────────
```

## Verification checklist

1. `pipeline.sh` exists and is executable.
2. Pipeline correctly routes the simple task to Haiku.
3. Pipeline correctly routes the complex task to Opus.
4. Output includes both Stage 1 and Stage 2 latency for each run.
5. Estimated cost for the three-task batch is lower than running all three on Opus.
6. Can explain when the Stage 1 Haiku overhead is worth paying and when it is not.
