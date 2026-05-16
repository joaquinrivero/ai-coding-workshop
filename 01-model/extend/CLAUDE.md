# CLAUDE.md — 01-model extend

- Exercise: 01-model extend — two-stage triage pipeline
- Allowed tools: Bash, Read, Write
- Focus: build pipeline.sh; measure latency and estimated cost per task
- Use routing-prompt.md from 01-model/apply/ as Stage 1 — do not duplicate it
- pipeline.sh goes in 01-model/extend/
- Parse model recommendation from Stage 1 output with grep or awk — keep it simple
- Do not install additional tools (no jq, no Python packages)
- Measure latency with the `time` built-in or `date +%s%N`
