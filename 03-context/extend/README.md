# Advanced — CLAUDE.md Hierarchy

**Objective:** Design a CLAUDE.md hierarchy for a real mono-repo. Define what belongs at each level. Test it against 3 cross-package tasks.

**Concept:** A CLAUDE.md hierarchy scopes context progressively. The root CLAUDE.md covers the whole repo: project purpose, global conventions, what never to do. Each package CLAUDE.md covers only that package: local conventions, allowed tools, dependencies, what the package owns and what it does not touch. Claude reads both when working in a package directory — the root first, then the package-level, so package rules override root rules when they conflict.

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

4. Design three cross-package tasks that a developer might ask Claude to help with. For each task, identify: which CLAUDE.md files are relevant? Write them down.

5. Test each task in a Claude session. Check: does Claude's response respect both the root-level and package-level constraints?

## Expected output

For each cross-package task: Claude's response correctly applies conventions from both CLAUDE.md files without contradicting itself. If a package-level rule conflicts with a root rule, the package-level rule takes precedence.

## Verification checklist

1. Wrote `root-CLAUDE.md`, `package-a-CLAUDE.md`, and `package-b-CLAUDE.md` in this directory.
2. Each file is under 30 lines with bullet list format.
3. Designed 3 cross-package tasks and identified relevant CLAUDE.md files for each.
4. Ran at least one task in a Claude session and verified it respected both CLAUDE.md files.
5. Can state in one sentence what belongs at the root level vs. the package level.
6. Can state what happens when root and package rules conflict.
