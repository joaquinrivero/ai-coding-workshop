---
description: Print pre-recorded outputs for the four prompt variants (baseline, role, chain-of-thought, few-shot) under labeled headings. Instant — no model calls.
---

Print the pre-recorded outputs for each variant under a labeled heading. Run the four commands below sequentially, exactly as written, and print the file contents after each heading.

```
── Baseline ──────────────────────────────────────────────────
```
Print the contents of `02-prompting/apply/outputs/baseline.out`.

```
── Role-prompting ────────────────────────────────────────────
```
Print the contents of `02-prompting/apply/outputs/role.out`.

```
── Chain-of-thought ──────────────────────────────────────────
```
Print the contents of `02-prompting/apply/outputs/cot.out`.

```
── Few-shot ──────────────────────────────────────────────────
```
Print the contents of `02-prompting/apply/outputs/few-shot.out`.

End with:
```
── Techniques comparison complete ─────────────────────────────
Compare the four outputs above. Discuss what changed and why.
Outputs were captured from a prior `claude --print` run for fast in-class display.
To re-run any variant live: claude --print "$(cat 02-prompting/apply/<variant>.md)"
──────────────────────────────────────────────────────────────
```

If any of the four `.out` files is missing, stop and print which file is missing. Do not regenerate them — the missing file should be re-captured offline before the next demo.
