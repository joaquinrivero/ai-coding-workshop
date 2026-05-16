---
name: readme-overhaul
description: README UX/UI overhaul — layered structure, no times, Core 4 in intro
metadata:
  type: project
---

# README Overhaul Design

## Goal

Improve README UX/UI for first-time participants and trainers. Replace flat section order with a layered structure: act → orient → reference.

## Decisions

- **Structure:** Layered (C) — Start here → Quick start → Modules → Session format → Repo layout → Commands
- **Scope:** Reorder + rewrite (B) — all sections kept, prose tightened, no content removed
- **Core 4:** Folded into one-line intro; standalone section removed
- **Times:** Removed everywhere — no durations in modules table or session format table
- **Session format table:** Kept; time column stripped; note "Each block: teach + exercise + debrief" retained
- **Repo layout tree:** Collapsed to a shared pattern (01-model/ … 05-workflow-automation/) — removes per-module repetition, keeps the structure clear
- **Audience routing:** Renamed "Who this is for" → "Start here"; moved to first section after title

## New Section Order

1. Title + one-line description (Core 4 embedded)
2. Start here (audience routing table)
3. Quick start (unchanged)
4. Modules (table: # / Topic / What you learn — no times)
5. Session format (table: Module / Block / Materials — no time column)
6. Repo layout (collapsed tree)
7. Commands (unchanged)

## Section Specs

### Title + intro
```
# AI Coding Workshop

Five modules covering the Core 4 of agentic coding — Model, Context, Tools, and Prompts — plus a Workflow Automation capstone. Built for Adobe engineers.
```

### Start here
Table with columns: You are | Go to
Rows: Participant (before session), Participant (first module), Participant (mid-session), Trainer, Slide author

### Quick start
Unchanged from current.

### Modules
Table: # | Topic | What you learn
Rows: 00–05. Module 05 noted as capstone in description.

### Session format
Table: Module | Block | Materials
Rows: 00–05. Footer note: "Each block: teach + exercise + debrief."

### Repo layout
Collapsed tree — shared concept/apply/extend pattern shown once for modules 01–05.

### Commands
Unchanged from current.

## What Does Not Change

- All module READMEs
- CLAUDE.md files
- 04-tooling/ (locked — do not modify)
- Exercise content
