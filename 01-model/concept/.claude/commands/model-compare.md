---
description: Run the prompt in prompt.md against Haiku, Sonnet, and Opus in sequence. Print each response with model name and approximate elapsed time.
---

Read `01-model/concept/prompt.md` to get the comparison prompt.

Run the prompt against each model in sequence:

```bash
echo "=== Haiku ===" && time claude --model claude-haiku-4-5-20251001 --print "$(cat 01-model/concept/prompt.md)"
echo "=== Sonnet ===" && time claude --model claude-sonnet-4-6 --print "$(cat 01-model/concept/prompt.md)"
echo "=== Opus ===" && time claude --model claude-opus-4-7 --print "$(cat 01-model/concept/prompt.md)"
```

Print each response with a header showing the model name and elapsed time.

After all three responses, print:

```
── Model comparison complete ──────────────────────────────────
Fill in the observation table in README.md with what you observed.
──────────────────────────────────────────────────────────────
```
