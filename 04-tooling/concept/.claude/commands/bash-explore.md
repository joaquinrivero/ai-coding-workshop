---
description: Demonstrate the Bash tool and read→act→verify loop. Runs safe read-only commands and shows how Claude uses their output.
---

Run the following commands in sequence, using each output to inform the next step.

## Step 1 — Environment check

```bash
node --version && npm --version && git --version
```

Report whether each meets the workshop requirements: Node 18+, npm 9+, git 2.30+.

## Step 2 — Repo state

```bash
git log --oneline -5
git status --short
```

Summarize the last 5 commits and report whether the working tree is clean.

## Step 3 — Workshop structure

```bash
ls -1 .
```

List the top-level directories and report whether all expected module directories are present: `00-installation`, `01-model`, `02-prompting`, `03-context`, `04-tooling`, `05-workflow-automation`.

## Summary

After all three steps, print a one-paragraph summary covering environment status, repo status, and workshop structure status.
