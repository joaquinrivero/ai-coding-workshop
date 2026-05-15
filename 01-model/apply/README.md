# 01-model / Apply — Choose your workflow's model

**Objective:** Write a classifier prompt that takes a task description and recommends Haiku, Sonnet, or Opus with reasoning.

**Concept:** A routing heuristic avoids over-spending on Opus for tasks Haiku can handle. Run the classifier on Haiku — routing is a lightweight classification task. The output is a model name and a one-sentence reason.

**Time:** 30 minutes

## Steps

1. Read `routing-prompt.md`. This is the starting point — a rough classifier prompt that needs refinement.

2. Run `/model-router` to test the current classifier on three tasks:
   - "Summarize this 200-word blog post in one sentence."
   - "Design the data model for a multi-tenant SaaS billing system."
   - "Fix a typo in a README."

3. Read the classifier's recommendations. For each task, decide whether you agree. If the classifier recommends Opus for the typo fix or Haiku for the billing system design, it is wrong.

4. Edit `routing-prompt.md` to correct the misclassifications. Common fixes:
   - Add explicit criteria for Haiku (fast, cheap, short output tasks)
   - Add explicit criteria for Opus (multi-step reasoning, novel design, ambiguous requirements)
   - Add examples (few-shot) for edge cases

5. Re-run `/model-router` with the same three tasks. Verify the recommendations are correct.

## Expected output

For each task, one line like:
```
Task: "Summarize this 200-word blog post..."
Recommendation: haiku
Reason: Single-step summarization with no ambiguity — Haiku is fast enough and correct.
```

## Verification checklist

1. Ran the classifier on all three tasks before and after editing `routing-prompt.md`.
2. After editing, all three tasks receive the correct model recommendation.
3. Classifier output includes a one-sentence reason for each recommendation.
4. The classifier itself runs on Haiku (the routing decision is cheap to make).
5. Can state the criteria you used to distinguish Haiku vs. Sonnet vs. Opus tasks.

## Workflow checkpoint

Open `my-workflow.md` at the repo root. Fill in the Model section:

```
### Model (fill in after Module 01 Apply)
Model: claude-sonnet-4-6        ← replace with your choice
Reason: Best balance of code understanding and speed for PR diffs
```

Commit:
```bash
git add 01-model/apply/notes.md my-workflow.md
git commit -m "01-model/apply: model chosen for my workflow"
```

**Next:** Module 02 Apply — write the structured prompt for your workflow.
