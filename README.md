# Agentic Coding Workshop

A hands-on training repo for Adobe engineers. Five 90-minute modules covering the Core 4 of Agentic Coding — Model, Context, Tools, and Prompts — plus a capstone on Workflow Automation.

## Who this is for

| You are | Start here |
|---|---|
| Participant (before the session) | Run `/setup` to verify your environment |
| Participant (first module) | `00-installation/README.md` |
| Participant (during a module) | The module's `README.md`, then the exercise `README.md` at your level |
| Trainer | Each module's `README.md` for exercise content; session format table below |
| Slide author | Module README tables (Exercise / Time / What you build) |

## Repo layout

```
.claude/
├── commands/
│   └── setup.md            /setup — pre-session environment check
└── settings.json
00-installation/
└── README.md               install Claude Code, clone, verify, troubleshoot
01-model/
├── README.md               module overview and exercise table
├── CLAUDE.md               module-scoped context
├── concept/                compare model outputs on the same prompt (15 min)
├── intermediate/           build a model routing heuristic (30 min)
└── advanced/               build a two-stage triage pipeline (50 min)
02-prompting/
├── README.md
├── CLAUDE.md
├── concept/                rewrite a vague prompt as a structured one (15 min)
├── intermediate/           compare chain-of-thought, few-shot, role-prompting (30 min)
└── advanced/               write a meta-prompt that generates prompts (50 min)
03-context/
├── README.md
├── CLAUDE.md
├── concept/                compare Claude with and without CLAUDE.md (15 min)
├── intermediate/           audit and trim the active context window (30 min)
└── advanced/               design a CLAUDE.md hierarchy for a mono-repo (50 min)
04-tooling/
├── README.md
├── CLAUDE.md
├── concept/                run Bash commands; observe the permission boundary (15 min)
├── intermediate/           write a slash command preflight check (30 min)
└── advanced/               configure an MCP server; write an MCP exercise (50 min)
05-workflow-automation/
├── README.md
├── CLAUDE.md
├── concept/                automate one weekly manual task (15 min)
├── intermediate/           add scoped CLAUDE.md; measure consistency (30 min)
└── advanced/               build a programmable pipeline as a triggered job (50 min)
```

## Quick start

```bash
git clone <repo-url>
cd agentic-coding-workshop
export ANTHROPIC_API_KEY=<your-key>
claude
```

Inside the Claude session:

```
/setup
```

Then open `00-installation/README.md` and work through each module in order.

## Session format

| Module | Block | Time | Materials |
|---|---|---|---|
| 00 | Installation | Pre-session | `00-installation/README.md` |
| 01 | Model | Block 1 | `01-model/README.md`, exercise at your level |
| 02 | Prompting | Block 2 | `02-prompting/README.md`, exercise at your level |
| 03 | Context | Block 3 | `03-context/README.md`, exercise at your level |
| 04 | Tooling | Block 4 | `04-tooling/README.md`, exercise at your level |
| 05 | Workflow Automation | Block 5 | `05-workflow-automation/README.md`, exercise at your level |

Each block: 25 min teach + 50 min exercise + 15 min debrief.

## The Core 4

Every agentic coding task involves four decisions: which **model** to use (cost vs. capability), what **context** to give it (scope precisely or it guesses), which **tools** to enable (Bash, slash commands, MCP), and how to write the **prompt** (a vague spec produces vague output). The capstone module — Workflow Automation — is where these four combine into a real automated task. Each module teaches one decision; the capstone teaches how they interact.

## Commands

| Command | When to run | What it does |
|---|---|---|
| `/setup` | Before the first session | Checks Claude version, API key, git identity, and presence of all module files. Prints a pass/fail table. |
