#!/bin/bash
# scoped-run.sh — Session-isolation consistency guide
#
# This script validates your CONTEXT.md and prints instructions for
# running 3 fresh Claude Code sessions to measure output consistency.
#
# No longer calls claude directly — uses interactive sessions instead.
# Each fresh session automatically loads CLAUDE.md if CONTEXT.md is copied to it.
#
# Usage: bash scoped-run.sh

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
CONTEXT_FILE="$SCRIPT_DIR/CONTEXT.md"

if [[ ! -f "$CONTEXT_FILE" ]]; then
  echo "Error: CONTEXT.md not found at $CONTEXT_FILE"
  echo ""
  echo "Create CONTEXT.md in this directory first. See README.md for what to put in it."
  exit 1
fi

WORD_COUNT=$(wc -w < "$CONTEXT_FILE")
if [[ "$WORD_COUNT" -gt 200 ]]; then
  echo "⚠️  CONTEXT.md is $WORD_COUNT words (limit: 200)."
  echo "Trim it before running the consistency test."
  exit 1
fi

echo "============================================"
echo "  Consistency Test — 3 Fresh Sessions"
echo "  CONTEXT.md: $WORD_COUNT words ✅"
echo "============================================"
echo ""
echo "Your CONTEXT.md is valid. Now run 3 fresh sessions."
echo ""
echo "TIP: Copy CONTEXT.md to CLAUDE.md so it loads automatically:"
echo "  cp CONTEXT.md CLAUDE.md"
echo ""
echo "Then open 3 terminal tabs, each running:"
echo "  cd $(pwd)"
echo "  claude"
echo ""
echo "In EACH session, type the SAME prompt and the SAME input."
echo "Use /automate if you have it, or type your prompt directly."
echo ""
echo "Save each session's output:"
echo "  Session 1: copy output → paste into run1.txt"
echo "  Session 2: copy output → paste into run2.txt"
echo "  Session 3: copy output → paste into run3.txt"
echo ""
echo "Then compare run1.txt, run2.txt, run3.txt in your editor."
echo "Fill in the consistency table in notes.md."
echo ""
echo "--- Your CONTEXT.md ---"
cat "$CONTEXT_FILE"
echo ""
echo "-----------------------"
