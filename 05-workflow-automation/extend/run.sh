#!/bin/bash
# run.sh — Capstone pipeline runner and validator
#
# PURPOSE: [FILL IN — what this pipeline does in one sentence]
#
# This script validates your pipeline slash command is ready, then
# shows you how to run it in Claude Code.
#
# Your pipeline is now a Claude Code slash command (.claude/commands/pipeline.md).
# Claude Code runs it interactively, using your subscription limits — not the
# Agent SDK credit — and can use Bash, Read, and Write tools internally.
#
# Usage: bash run.sh ["your input"]

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
COMMAND_FILE="$SCRIPT_DIR/.claude/commands/pipeline.md"
LOG_DIR="$SCRIPT_DIR/logs"

if [[ ! -f "$COMMAND_FILE" ]]; then
  echo "Error: .claude/commands/pipeline.md not found"
  echo "Complete Step 2 in README.md first (fill in the slash command template)."
  exit 1
fi

if grep -q "FILL IN" "$COMMAND_FILE"; then
  echo "⚠️  Pipeline slash command still has unfilled sections:"
  grep -n "FILL IN" "$COMMAND_FILE"
  echo ""
  echo "Edit $COMMAND_FILE before running."
  exit 1
fi

mkdir -p "$LOG_DIR"

echo "============================================"
echo "  Capstone Pipeline"
echo "  $(date)"
echo "============================================"
echo ""
echo "✅ Slash command is ready: .claude/commands/pipeline.md"
echo "✅ Log directory: $LOG_DIR"
echo ""

if [[ -n "${1:-}" ]]; then
  echo "Your input: $1"
  echo ""
  echo "To run your pipeline in Claude Code, type:"
  echo "  /pipeline $1"
else
  echo "Usage: bash run.sh \"your input\""
  echo "Then type /pipeline \"your input\" in Claude Code."
fi

echo ""
echo "Claude Code will:"
echo "  1. Execute your prompt with the input"
echo "  2. Use Bash/Read/Write tools as instructed in your prompt"
echo "  3. Write output to a timestamped file"
echo "  4. Log the run"
echo ""
echo "Run it 5 times for quality measurement. Log results in results.md."
