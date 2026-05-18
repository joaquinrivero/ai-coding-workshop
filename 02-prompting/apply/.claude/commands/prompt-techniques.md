---
description: Run the three prompt-technique demos from 02-prompting/apply. Prints before/after outputs for role-prompting, chain-of-thought, and few-shot. Instant — no model calls.
---

Print the pre-recorded outputs for the three demos under labeled headings. Read each `.out` file and print its contents under the matching heading. Print everything in this exact order.

```

══════════════════════════════════════════════════════════════
  DEMO 1 — ROLE-PROMPTING: tone changes, the answer doesn't
══════════════════════════════════════════════════════════════
Task: Draft a first reply to a customer support ticket about
a file-upload crash. Same task, three different roles.
```

```
── No role ──────────────────────────────────────────────────
```
Print the contents of `02-prompting/apply/outputs/role-none.out`.

```
── Role: junior support intern ──────────────────────────────
```
Print the contents of `02-prompting/apply/outputs/role-intern.out`.

```
── Role: senior on-call engineer ────────────────────────────
```
Print the contents of `02-prompting/apply/outputs/role-senior.out`.

```

══════════════════════════════════════════════════════════════
  DEMO 2 — CHAIN-OF-THOUGHT: reasoning becomes visible
══════════════════════════════════════════════════════════════
Task: Decide if "the dashboard sometimes shows stale data" is
a bug. Same scenario, with and without a reasoning scaffold.
```

```
── Without CoT (snap verdict) ───────────────────────────────
```
Print the contents of `02-prompting/apply/outputs/cot-without.out`.

```
── With CoT (4-step reasoning scaffold) ─────────────────────
```
Print the contents of `02-prompting/apply/outputs/cot-with.out`.

```

══════════════════════════════════════════════════════════════
  DEMO 3 — FEW-SHOT: output format follows the examples
══════════════════════════════════════════════════════════════
Task: Summarize three pull requests. Same list, with and
without two worked examples in a strict format.
```

```
── Without examples (prose) ─────────────────────────────────
```
Print the contents of `02-prompting/apply/outputs/fewshot-without.out`.

```
── With examples (locks to [PR #N] | Risk | Test format) ────
```
Print the contents of `02-prompting/apply/outputs/fewshot-with.out`.

```

══════════════════════════════════════════════════════════════
  Demos complete
══════════════════════════════════════════════════════════════
Outputs were captured from a prior `claude --print` run.
To re-run any variant live:
  claude --print "$(cat 02-prompting/apply/<variant>.md)"
```

If any `.out` file is missing, stop and print which file is missing. Do not regenerate it — re-capture offline before the next demo.
