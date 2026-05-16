---
description: Run the weak prompt from weak-prompt.md. If strong-prompt.md exists, run both and print a side-by-side comparison.
---

Read `02-prompting/concept/weak-prompt.md`.

Run it:
```bash
claude --print "$(cat 02-prompting/concept/weak-prompt.md)"
```

Print the output under a heading: `── Weak prompt output ──`

Check whether `02-prompting/concept/strong-prompt.md` exists:
```bash
ls 02-prompting/concept/strong-prompt.md 2>/dev/null
```

If it does not exist:
Print:
```
strong-prompt.md not found.
Write your structured prompt to 02-prompting/concept/strong-prompt.md, then re-run /prompt-rewrite to compare.
```

If it exists:
Run the strong prompt:
```bash
claude --print "$(cat 02-prompting/concept/strong-prompt.md)"
```

Print the output under: `── Strong prompt output ──`

Then print:
```
── Comparison ─────────────────────────────────────────────────
Review both outputs above. What changed? Which is more specific?
──────────────────────────────────────────────────────────────
```
