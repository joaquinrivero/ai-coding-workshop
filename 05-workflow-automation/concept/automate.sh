#!/bin/bash
# automate.sh — Interactive automation setup guide
#
# This script validates your slash command and shows how to run it.
# Your automation is now a Claude Code slash command, not a bash pipeline.
# This means it runs interactively and uses your subscription limits — not
# the Agent SDK credit.
#
# Usage: bash automate.sh

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
COMMAND_FILE="$SCRIPT_DIR/.claude/commands/automate.md"

echo "============================================"
echo "  Automation Slash Command"
echo "============================================"
echo ""

if [[ ! -f "$COMMAND_FILE" ]]; then
  echo "❌ Slash command not found: $COMMAND_FILE"
  echo ""
  echo "Create .claude/commands/automate.md with your structured prompt."
  echo "See README.md for instructions."
  exit 1
fi

if grep -q "FILL IN" "$COMMAND_FILE"; then
  echo "⚠️  Slash command has unfilled sections:"
  grep -n "FILL IN" "$COMMAND_FILE"
  echo ""
  echo "Edit $COMMAND_FILE and replace all [FILL IN] sections."
  exit 1
fi

echo "✅ Slash command is ready."
echo ""
echo "To run your automation in Claude Code, type:"
echo "  /automate \"your test input\""
echo ""
echo "--- Current command ---"
cat "$COMMAND_FILE"
echo ""
echo "-----------------------"
echo ""
echo "Run it 3 times with the same input and rate each output (1-5)."
echo "Record ratings in notes.md."
