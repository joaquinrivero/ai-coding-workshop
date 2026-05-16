# AI Coding Workshop

Hands-on training for Adobe engineers. Five modules cover Model, Context, Tools, Prompts, and Workflow Automation.

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
├── apply/                  build a model routing heuristic (30 min)
└── extend/                 build a two-stage triage pipeline (50 min)
02-prompting/
├── README.md
├── CLAUDE.md
├── concept/                rewrite a vague prompt as a structured one (15 min)
├── apply/                  compare chain-of-thought, few-shot, role-prompting (30 min)
└── extend/                 write a meta-prompt that generates prompts (50 min)
03-context/
├── README.md
├── CLAUDE.md
├── concept/                compare Claude with and without CLAUDE.md (15 min)
├── apply/                  audit and trim the active context window (30 min)
└── extend/                 design a CLAUDE.md hierarchy for a mono-repo (50 min)
04-tooling/
├── README.md
├── CLAUDE.md
├── concept/                run Bash commands; observe the permission boundary (15 min)
├── apply/                  write a slash command preflight check (30 min)
└── extend/                 configure an MCP server; write an MCP exercise (50 min)
05-workflow-automation/
├── README.md
├── CLAUDE.md
├── concept/                automate one weekly manual task (15 min)
├── apply/                  add scoped CLAUDE.md; measure consistency (30 min)
└── extend/                 build a programmable pipeline as a triggered job (50 min)
```

## Quick start

```bash
git clone <repo-url>
cd ai-coding-workshop
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

Every AI coding task makes four decisions:

- **Model:** choose cost and capability.
- **Context:** scope facts and rules precisely.
- **Tools:** enable Bash, slash commands, or MCP.
- **Prompt:** write a clear specification.

Workflow Automation combines all four into one real task.

## Commands

| Command | When to run | What it does |
|---|---|---|
| `/setup` | Before the first session | Checks Claude, API key, git identity, and module files. |
