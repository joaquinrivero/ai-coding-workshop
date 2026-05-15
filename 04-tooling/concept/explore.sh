#!/bin/bash
# explore.sh — Guide for watching Claude use Bash tools interactively
#
# Claude Code has access to Bash, Read, and other tools in interactive mode.
# This guide gives you a prompt to run in Claude Code so you can watch
# Claude's read→act→verify loop in real time.
#
# Usage: bash explore.sh
#   Prints the observation prompt and setup instructions.

REPO_ROOT="$(cd "$(dirname "$0")/../.." && pwd)"

echo "============================================"
echo "  Bash Tool Observation Exercise"
echo "  Repo to explore: $REPO_ROOT"
echo "============================================"
echo ""
echo "Open Claude Code in the workshop root directory:"
echo "  cd $REPO_ROOT"
echo "  claude"
echo ""
echo "Then paste this prompt into the chat:"
echo ""
echo "---"
echo "You are exploring this workshop repo: $REPO_ROOT"
echo ""
echo "Do these steps one at a time. For each step, run the appropriate"
echo "bash command using your Bash tool, show me the output, and summarize"
echo "what you found before moving to the next step."
echo ""
echo "Step 1: List all .py and .sh files in the repo."
echo "Step 2: Count the total number of lines of code across all .py files."
echo "Step 3: Search for any TODO comments in all files."
echo "Step 4: Find the largest file in the repo by line count."
echo "Step 5: Write a 3-sentence summary of what this repo is for,"
echo "        based only on what you observed with tools — not from README or CLAUDE.md."
echo ""
echo "Use your Bash tool for every step. Do not guess or rely on memory."
echo "---"
echo ""
echo "Watch the Bash tool calls appear in real time. Note:"
echo "  - When does Claude read before acting?"
echo "  - When does it verify its own output?"
echo "  - How does it decide what to run next?"
echo ""
echo "Write your observations in notes.md."
echo "============================================"
