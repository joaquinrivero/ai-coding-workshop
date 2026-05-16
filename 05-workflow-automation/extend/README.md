# 05-workflow / Extend — Build a programmable pipeline

**Objective:** Build a programmable pipeline. Use `prompt.md` with `{{PLACEHOLDERS}}` and a thin wrapper script. Run it on a schedule or trigger.

**Concept:** A raw bash wrapper tangles the task and runner. A programmable pipeline separates them. `prompt.md` defines the task with `{{PLACEHOLDERS}}` for runtime values. The wrapper substitutes values and calls Claude. Edit `prompt.md` to change the task. Edit the wrapper to change when it runs.

**Time:** 50 minutes

## Steps

1. Read `pipeline-template.md` in this directory. It shows the structure for a programmable pipeline.

2. Read `prompt.md`. Adapt it to a real task from your team.

3. Adapt `prompt.md` for your task. Replace the placeholder task. Add `{{PLACEHOLDERS}}` for runtime values.

4. Write the wrapper script. Choose one:
   - `pipeline.sh` (bash) — substitute placeholders with `sed`; call `claude --print`
   - `pipeline.py` (Python, uv) — substitute with string formatting; call `subprocess`
   - `pipeline.ts` (TypeScript, Bun) — substitute with template literals; call `execa`

   The wrapper accepts arguments for each placeholder and passes the completed prompt to Claude.

5. Test the pipeline by running it manually:
```bash
bash pipeline.sh "2026-05-15" "~/dev/my-repo"
```

6. Add a trigger. Choose one:
   - Cron job (macOS `crontab -e`): run daily at 9am
   - Git hook (`.git/hooks/post-commit`): run after each commit
   - Makefile target: run with `make report`

7. Document the trigger in a comment at the top of `pipeline.sh`.

## Expected output

```
── Pipeline run ───────────────────────────────────────────────
Date:   2026-05-15
Repo:   ~/dev/my-repo
Prompt: (substituted, 312 tokens)
Output: [Claude's output here]
──────────────────────────────────────────────────────────────
```

## Verification checklist

1. `prompt.md` contains at least one `{{PLACEHOLDER}}`.
2. The wrapper script substitutes all placeholders before calling Claude.
3. Ran the pipeline manually with real arguments and got a usable output.
4. Added a trigger (cron, git hook, or Makefile target) and documented it in the wrapper.
5. Can explain the benefit of separating `prompt.md` from the wrapper script.
6. Can state what you would change to adapt this pipeline for a different task without touching the wrapper.
