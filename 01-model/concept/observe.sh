#!/bin/bash
# observe.sh — Guide for interactive model comparison
# Goal: Run the same prompt in 3 Claude Code sessions with different models.
# No longer calls claude directly — uses interactive sessions instead.
#
# Usage: bash observe.sh

PROMPT="Explain what a REST API is in 2 sentences."

echo "============================================"
echo "  Model Comparison Exercise"
echo "  Prompt: \"$PROMPT\""
echo "============================================"
echo ""
echo "Open 3 separate terminal tabs and run one command in each:"
echo ""
echo "  Tab 1 (Haiku):  claude --model claude-haiku-4-5"
echo "  Tab 2 (Sonnet): claude --model claude-sonnet-4-6"
echo "  Tab 3 (Opus):   claude --model claude-opus-4-7"
echo ""
echo "In each session, type this prompt and press Enter:"
echo ""
echo "  $PROMPT"
echo ""
echo "Note when each response starts and finishes (rough timing is fine)."
echo "Then fill in the observation table in notes.md."
echo ""
echo "============================================"
echo "  Tip: add 'Also state your model name.' to the prompt"
echo "  to confirm which model answered."
echo "============================================"
