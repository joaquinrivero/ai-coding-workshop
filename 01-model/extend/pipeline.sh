#!/bin/bash
# pipeline.sh — Interactive two-stage routing exercise guide
#
# This script no longer calls claude directly.
# The two-stage pipeline is now run interactively using Claude Code sessions.
#
# Usage: bash pipeline.sh
#   Prints the 10 tasks and explains the two-stage workflow.

echo "============================================"
echo "  Two-Stage Routing Pipeline"
echo "  Interactive Edition"
echo "============================================"
echo ""
echo "For each task below, run TWO steps in Claude Code:"
echo ""
echo "STAGE 1 — Triage (any Claude Code session):"
echo "  /triage <task>"
echo "  Record the recommended model and confidence."
echo ""
echo "STAGE 2 — Execute (new session with recommended model):"
echo "  claude --model <recommended-model>"
echo "  Type the task. Rate the quality 1-5."
echo ""
echo "--- 10 Tasks to Route ---"
echo ""
echo " 1. Write a one-line docstring for a Python function"
echo " 2. Explain the tradeoffs between PostgreSQL and DynamoDB for a high-write workload"
echo " 3. Fix a typo in a README"
echo " 4. Design the data model for a multi-tenant SaaS billing system"
echo " 5. Summarize this error message in plain English: NullPointerException at line 42"
echo " 6. Review this 200-line Go service for concurrency bugs"
echo " 7. Generate a git commit message for: fixed null check in auth middleware"
echo " 8. Propose a migration strategy from REST to GraphQL for a 5-year-old monolith"
echo " 9. List three alternative names for a variable called 'data'"
echo "10. Evaluate whether to use WebSockets or Server-Sent Events for our notification system"
echo ""
echo "--- Record results in results.md ---"
echo ""
echo "| Task (short) | /triage route | Confidence | Quality (1-5) | Notes |"
echo "|-------------|---------------|------------|---------------|-------|"
echo "| ...         | ...           | ...        | ...           | ...   |"
echo ""
echo "============================================"
echo "  Stretch: for tasks where confidence=low,"
echo "  run the task in BOTH models. Which was right?"
echo "============================================"
