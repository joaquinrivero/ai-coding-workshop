---
description: Pre-flight check for [your project]. Verifies [list preconditions]. Run before starting work.
---

Run all checks below in order. Print a status table at the end.

## Check 1 — [Name]

Run:
```bash
[bash command]
```

Pass: [what the output looks like when passing]
Fail: [what the output looks like when failing]

Fix if failing:
```bash
[fix command]
```

## Check 2 — [Name]

Run:
```bash
[bash command]
```

Pass: [condition]
Fail: [condition]

## Check 3 — [Name]

Run:
```bash
[bash command]
```

Pass: [condition]
Fail: [condition]

## Print status table

After all checks, print this format:

```
── [Project name]: pre-flight check ──────────────────

  [Check 1 name]     ✅ / ❌  [details]
  [Check 2 name]     ✅ / ❌  [details]
  [Check 3 name]     ✅ / ❌  [details]

───────────────────────────────────────────────────────
```

If all ✅: "Ready."
If any ❌: list the fix commands.
