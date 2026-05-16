# README Overhaul Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Rewrite README.md to a layered structure — action first, reference last — with no time durations anywhere.

**Architecture:** Full replacement of `README.md` in one write. New section order: title+intro → Start here → Quick start → Modules → Session format → Repo layout → Commands. Core 4 folded into the intro line. "The Core 4" section removed. Repo layout tree collapsed to a shared pattern. Single-pass rewrite avoids reordering bugs from incremental edits.

**Tech Stack:** Markdown only.

---

### Task 1: Write the complete new README

**Files:**
- Modify: `README.md`

- [ ] **Step 1: Overwrite README.md with the new content**

Replace the entire contents of `README.md` with:

```markdown
# AI Coding Workshop

Five modules covering the Core 4 of agentic coding — Model, Context, Tools, and Prompts — plus a Workflow Automation capstone. Built for Adobe engineers.

## Start here

| You are | Go to |
|---|---|
| Participant (before the session) | Run `/setup` to verify your environment |
| Participant (first module) | `00-installation/README.md` |
| Participant (mid-session) | The module's `README.md`, then the exercise at your level |
| Trainer | Each module's `README.md`; session format below |
| Slide author | Module README tables (Exercise / What you build) |

## Quick start

​```bash
git clone <repo-url>
cd ai-coding-workshop
claude
​```

Inside the Claude session:

​```
/setup
​```

Then open `00-installation/README.md` and work through each module in order.

## Modules

| # | Topic | What you learn |
|---|---|---|
| 00 | Installation | Set up Claude Code, clone, verify |
| 01 | Model | Choose cost and capability |
| 02 | Prompting | Write clear specifications |
| 03 | Context | Scope facts and rules precisely |
| 04 | Tooling | Bash, slash commands, MCP |
| 05 | Workflow Automation | Capstone — combines all four |

## Session format

| Module | Block | Materials |
|---|---|---|
| 00 | Installation | `00-installation/README.md` |
| 01 | Model | `01-model/README.md`, exercise at your level |
| 02 | Prompting | `02-prompting/README.md`, exercise at your level |
| 03 | Context | `03-context/README.md`, exercise at your level |
| 04 | Tooling | `04-tooling/README.md`, exercise at your level |
| 05 | Workflow Automation | `05-workflow-automation/README.md`, exercise at your level |

Each block: teach + exercise + debrief.

## Repo layout

​```
.claude/
├── commands/
│   └── setup.md            /setup — pre-session environment check
└── settings.json
00-installation/
└── README.md               install Claude Code, clone, verify, troubleshoot
01-model/ … 05-workflow-automation/
├── README.md               module overview
├── CLAUDE.md               module-scoped context
├── concept/                15-min exercise
├── apply/                  30-min exercise
└── extend/                 50-min exercise
​```

## Commands

| Command | When to run | What it does |
|---|---|---|
| `/setup` | Before the first session | Checks Claude auth, git identity, and module files. |
```

- [ ] **Step 2: Verify section order**

```bash
grep "^## " README.md
```

Expected output (exact order):
```
## Start here
## Quick start
## Modules
## Session format
## Repo layout
## Commands
```

- [ ] **Step 3: Verify no time references remain**

```bash
grep -n "min\|Pre-session\|Block [0-9]\|Time\|Core 4\|Who this is for" README.md
```

Expected: no output.

- [ ] **Step 4: Verify line count**

```bash
wc -l README.md
```

Expected: under 75 lines (was 101).

- [ ] **Step 5: Commit**

```bash
git add README.md
git commit -m "docs(readme): overhaul — layered structure, no times, Core 4 in intro"
```

---

### Task 2: Spot-check rendered output

**Files:**
- Read: `README.md`

- [ ] **Step 1: Read the full file and confirm**

```bash
cat README.md
```

Verify each of the following manually:

- [ ] First `##` heading is `Start here`, not `Who this is for`
- [ ] `## Quick start` comes before `## Modules`
- [ ] Modules table has columns `#`, `Topic`, `What you learn` — no time column
- [ ] Session format table has columns `Module`, `Block`, `Materials` — no `Time` column
- [ ] Repo layout tree uses `01-model/ … 05-workflow-automation/` (collapsed, not repeated per module)
- [ ] No section named `The Core 4`
- [ ] Second line of file mentions "Core 4", "Model", "Context", "Tools", "Prompts", and "capstone"
- [ ] `## Commands` table is present and unchanged

- [ ] **Step 2: If any check fails, fix inline and amend**

```bash
git add README.md
git commit -m "docs(readme): fix post-review corrections"
```
