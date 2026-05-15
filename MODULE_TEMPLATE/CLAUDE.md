# Module generation rules

Copy this directory, rename it `NN-<topic>/`, replace every
<PLACEHOLDER> with real content. Follow these rules exactly.

## Track contract

| Track    | Duration | Purpose                                       |
|----------|----------|-----------------------------------------------|
| concept/ | 15 min   | Participant observes a provided example        |
| apply/   | 30 min   | Participant adds one layer to my-workflow.md  |
| extend/  | 50 min   | Optional depth — production concerns           |

## Required files per track

concept/ → README.md, CLAUDE.md, <guide-script>.sh
apply/   → README.md, CLAUDE.md, <starter>, <artifact>
extend/  → README.md, CLAUDE.md, <template or slash command>

Guide scripts in concept/ print instructions only — they never
invoke claude. Apply artifacts are named for what they produce.

## CLAUDE.md scope chain

root CLAUDE.md    → workshop-wide conventions
module CLAUDE.md  → module vocabulary and constraints
track CLAUDE.md   → what Claude may/may not touch here

concept/ → read-only, observe only, no edits
apply/   → specifies files the participant writes
extend/  → open scope, participant's own codebase

## README rules

Every README is a how-to document. Required sections:
1. H2 heading with timing: `## Concept (15 min)`
2. Objective — one sentence
3. Steps — numbered list, verb-first
4. Expected output — what done looks like
5. Verification checklist — [ ] items

Apply READMEs must end with a Workflow checkpoint section that
tells the participant how to update my-workflow.md.

## Naming

Module directory  → NN-<topic>/  (zero-padded: 06, 07, ...)
Apply artifact    → named for what it produces (workflow-prompt.md, CLAUDE.md)
Scripts           → <verb>.sh  — guide scripts only, never invoke claude
Slash commands    → .claude/commands/<verb>.md  — always end with $ARGUMENTS

## Style

Apply unix style to all written artifacts:
- First sentence answers "what does this do?"
- Verb-first instructions
- Under 20 words per sentence
- No filler words (just, simply, essentially, basically)
- Active voice, second person, present tense
