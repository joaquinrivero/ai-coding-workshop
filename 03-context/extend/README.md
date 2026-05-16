# 03-context / Extend — Design a CLAUDE.md hierarchy

**Objective:** Design a CLAUDE.md hierarchy for a mono-repo. Define each level. Test three cross-package tasks.

**Concept:** A CLAUDE.md hierarchy scopes context progressively. Root CLAUDE.md covers project purpose, global conventions, and hard limits. Package CLAUDE.md covers local conventions, allowed tools, dependencies, ownership, and boundaries. Claude reads root context first, then package context. Package rules override root rules when they conflict.

**Time:** 50 minutes

## Steps

1. Choose a real mono-repo from your work — one with at least 3 packages or modules. Identify its root and at least 2 packages.

2. Audit the root. Ask: what applies to every engineer working anywhere in this repo?
   Write this as `root-CLAUDE.md` in this exercise directory. Include:
   - Project name and purpose (one sentence)
   - Primary language and package manager
   - Global conventions (naming, file structure, commit message format)
   - What requires review before touching (shared utils, auth, infra)
   - How to run tests globally

3. Audit two packages. For each, ask: what applies only to this package?
   Write `package-a-CLAUDE.md` and `package-b-CLAUDE.md`. Include:
   - Package name and what it owns
   - Local conventions that differ from root (different test runner? different lint rules?)
   - What this package does not own (do not touch X from here)
   - How to run this package's tests

4. Design three cross-package tasks. For each task, identify the relevant CLAUDE.md files. Write them down.

5. Test each task in Claude. Check whether the response respects root and package constraints.

## Expected output

For each cross-package task, Claude applies conventions from both CLAUDE.md files. It does not contradict itself. Package rules override root rules when they conflict.

## Verification checklist

1. Wrote `root-CLAUDE.md`, `package-a-CLAUDE.md`, and `package-b-CLAUDE.md` in this directory.
2. Each file is under 30 lines with bullet list format.
3. Designed 3 cross-package tasks and identified relevant CLAUDE.md files for each.
4. Ran at least one task in a Claude session and verified it respected both CLAUDE.md files.
5. Can state in one sentence what belongs at the root level vs. the package level.
6. Can state what happens when root and package rules conflict.
