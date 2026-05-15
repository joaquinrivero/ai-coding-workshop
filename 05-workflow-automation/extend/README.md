# Advanced — Programmable Pipeline

**Objective:** Build a programmable pipeline: a `prompt.md` with `{{PLACEHOLDERS}}` plus a thin wrapper script (bash, python, or TypeScript) that substitutes runtime values and calls the Claude CLI. The pipeline runs as a scheduled or triggered job.

**Concept:** A raw bash wrapper is brittle: the task and the runner are tangled. A programmable pipeline separates them. `prompt.md` is the specification — it describes what Claude should do, with `{{PLACEHOLDERS}}` for runtime values. The wrapper substitutes the values and calls Claude. To change what Claude does, edit `prompt.md`. To change how it runs (on a schedule, on a webhook, on a file change), edit the wrapper. Neither change requires touching the other.

**Time:** 50 minutes

## Steps

1. Read `pipeline-template.md` in this directory. It shows the structure for a programmable pipeline.

2. Read `prompt.md`. This is the starting prompt — adapt it to a real task from your team.

3. Adapt `prompt.md` for your task. Replace the placeholder task description with your task. Add `{{PLACEHOLDERS}}` for values that change at runtime (date, file path, repo name, etc.).

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
