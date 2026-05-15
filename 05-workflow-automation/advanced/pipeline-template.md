# Pipeline Template

A programmable pipeline has two parts:

1. `prompt.md` — the specification. Contains `{{PLACEHOLDERS}}` for runtime values. Edit this to change what Claude does.

2. The wrapper script — the runner. Substitutes placeholders and calls Claude. Edit this to change how the pipeline runs (schedule, trigger, input sources).

## prompt.md structure

```
Role: <who Claude should be>
Context: <what Claude needs to know — use {{PLACEHOLDERS}} for runtime values>
Task: <the specific instruction>
Output format: <length, structure, format>
Constraints: <what to omit or avoid>
```

## Wrapper pattern (bash)

```bash
#!/bin/bash
# Trigger: <how this runs — cron schedule, git hook, manual>
INPUT="${1:?Usage: pipeline.sh <input>}"

PROMPT=$(sed "s|{{INPUT}}|$INPUT|g" "$(dirname "$0")/prompt.md")
claude --print "$PROMPT"
```

## Placeholder naming

Use `{{SCREAMING_SNAKE_CASE}}` for placeholders: `{{DATE}}`, `{{REPO_PATH}}`, `{{AUTHOR}}`.

Avoid generic names like `{{VALUE}}` — name each placeholder after what it holds.

## Trigger options

| Trigger | Setup | When it runs |
|---|---|---|
| Cron | `crontab -e` → `0 9 * * 1 bash /path/to/pipeline.sh $(date +%F)` | Every Monday at 9am |
| Git hook | `.git/hooks/post-commit` → `bash /path/to/pipeline.sh $(git log -1 --format=%H)` | After each commit |
| Makefile | `report: pipeline.sh` → `bash pipeline.sh $(date +%F)` | `make report` |
