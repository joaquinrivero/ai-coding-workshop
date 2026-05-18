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

```bash
git clone https://github.com/joaquinrivero/ai-coding-workshop.git
cd ai-coding-workshop
claude
```

Then run:

```
/setup
```

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

```
.claude/
├── commands/
│   └── setup.md            /setup — pre-session environment check
└── settings.json           tool permissions
00-installation/
└── README.md               install Claude Code, clone, verify, troubleshoot
01-model/ 02-prompting/ 03-context/ 04-tooling/ 05-workflow-automation/
├── README.md               module overview
├── CLAUDE.md               module-scoped context
├── concept/                introductory exercise
├── apply/                  applied exercise
└── extend/                 extended exercise
```

## Commands

| Command | When to run | What it does |
|---|---|---|
| `/setup` | Before the first session | Checks Claude auth, git identity, and module files |