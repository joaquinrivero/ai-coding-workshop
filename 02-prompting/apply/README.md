# 02-prompting / Apply — Three techniques, one task

**Objective:** Show how role-prompting, chain-of-thought, and few-shot change Claude's output on the same task.

**Concept:** Three techniques address different failure modes. Role-prompting fixes tone and decisiveness. Chain-of-thought helps when the model jumps to conclusions on ambiguous input. Few-shot locks output format.

**Time:** 30 minutes

## Demo setup

All four prompt variants are already written in this directory:

| File | Technique |
|---|---|
| `baseline.md` | No technique — the task as-is |
| `role.md` | Adds an opinionated role: blunt on-call engineer |
| `cot.md` | Adds a 3-step reasoning scaffold |
| `few-shot.md` | Adds 2 worked examples forcing a strict table format |

The task is the same in all four: classify six support tickets as Bug vs. Feature Request and assign P1/P2/P3. One ticket — *"Sometimes the app feels slow"* — is deliberately ambiguous. Watch how each technique handles it.

## Run the demo

```bash
/prompt-techniques
```

This prints all four outputs **instantly** under labeled headings (Baseline / Role / Chain-of-thought / Few-shot). Outputs are pre-recorded in `outputs/` so the demo doesn't stall on live model calls.

To re-run any variant live (slower — wait ~30–60s per call):
```bash
claude --print "$(cat baseline.md)"   # or role.md / cot.md / few-shot.md
```

To refresh the pre-recorded outputs (e.g. after editing a prompt), run from a directory *outside* this one so the project's CLAUDE.md doesn't contaminate the prompt:
```bash
cd /tmp && claude --print "$(cat <abs-path>/baseline.md)" > <abs-path>/outputs/baseline.out
```

## What to point out on screen

**Baseline** — Free-form prose. Hedging words ("could be", "might"). The ambiguous ticket gets a guess with no justification.

**Role-prompting** — Tone shift. No hedging. Decisive priority calls. The blunt persona produces shorter, more confident output. Same classifications, different voice.

**Chain-of-thought** — Visible reasoning before each answer. On the ambiguous ticket, the model states its assumption out loud (e.g., *"assuming this is a performance regression, not a UX complaint"*). The answer is the same kind of answer, but you can now see *why*.

**Few-shot** — Output format locks to the example table. No prose. The `Reason` column appears even though the user never asked for one — the examples taught the schema.

## Observation table (pre-filled for reference)

| Technique | Did it change the output? | How? |
|---|---|---|
| Role-prompting | Yes | Tone became blunt and decisive; hedging removed; classifications mostly unchanged |
| Chain-of-thought | Yes | Reasoning printed before each answer; ambiguity surfaced as explicit assumptions |
| Few-shot | Yes | Output became a strict markdown table matching the example schema, including a `Reason` column |

## Verification checklist

1. Ran `/prompt-techniques` and saw four labeled outputs.
2. Pointed out the tone shift between baseline and role.
3. Pointed out the visible reasoning steps in chain-of-thought, especially on the ambiguous ticket.
4. Pointed out that few-shot locked the output format to the example schema.
5. Can describe a task where chain-of-thought would *not* improve output (simple, deterministic tasks).
6. Can describe a task where few-shot is necessary (when output format matters more than reasoning).

## Workflow checkpoint

Open `my-workflow.md` at the repo root. Fill in the Prompt section:

```
### Prompt (fill in after Module 02 Apply)
Prompt file: `02-prompting/apply/workflow-prompt.md`
Status: tested
```

Commit:
```bash
git add 02-prompting/apply/baseline.md 02-prompting/apply/role.md 02-prompting/apply/cot.md 02-prompting/apply/few-shot.md 02-prompting/apply/workflow-prompt.md my-workflow.md
git commit -m "02-prompting/apply: workflow prompt written and tested"
```

**Next:** Module 03 Apply — scope the context Claude needs to run this prompt well.
