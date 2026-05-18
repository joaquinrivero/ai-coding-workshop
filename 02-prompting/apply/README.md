# 02-prompting / Apply — Three techniques, three demos

**Objective:** See how role-prompting, chain-of-thought, and few-shot each change Claude's output. Each technique gets its own task chosen to make the benefit unmistakable.

**Concept:**
- **Role-prompting** changes voice and expertise level, not the underlying answer.
- **Chain-of-thought** makes the model's reasoning visible — most useful on ambiguous cases.
- **Few-shot** constrains output format: the result matches whatever your examples show.

**Time:** 30 minutes

## Run the demo

```bash
/prompt-techniques
```

Prints all three demos with before/after outputs under labeled headings. Instant — outputs are pre-recorded in `outputs/` so the demo doesn't stall on live model calls.

## What each demo shows

### Demo 1 — Role-prompting

**Task:** Draft a first reply to a customer support ticket about a 10MB upload crash.

**Three variants, same task:**

| File | Role |
|---|---|
| `role-none.md` | No role specified |
| `role-intern.md` | Junior support intern (polite, hedging, apologetic) |
| `role-senior.md` | Senior on-call engineer at 2am (direct, terse) |

**Point this out on screen:** All three replies converge on the same underlying advice — ask what browser/file type, suggest a workaround. The *tone* is what shifts. The intern apologizes and hedges ("I'm so sorry"). The senior dives straight into a hypothesis ("Likely hitting a client-side memory ceiling"). Role-prompting changes *how* the model speaks, not *what* it knows.

### Demo 2 — Chain-of-thought

**Task:** Decide whether "the dashboard sometimes shows stale data — after I leave the tab open and come back" is a bug.

**Two variants:**

| File | Variant |
|---|---|
| `cot-without.md` | One-sentence verdict, no reasoning |
| `cot-with.md` | Same scenario plus a 4-step reasoning scaffold |

**Point this out on screen:** Without CoT, the model gives a one-line snap verdict. With CoT, the model enumerates 8 possible causes, builds a table mapping each to bug-vs-expected with the assumption it depends on, and arrives at a verdict by *combining signals* (notably "it's been happening for about a week" → likely a regression). You can now audit the reasoning — and the model surfaces ambiguity instead of hiding it.

### Demo 3 — Few-shot

**Task:** Summarize three pull requests.

**Two variants:**

| File | Variant |
|---|---|
| `fewshot-without.md` | Vague "briefly summarize each" request |
| `fewshot-with.md` | Same list, preceded by 2 examples in a strict format |

**Point this out on screen:** Without examples, you get three prose bullets. With examples, the output snaps to the exact `[PR #N] one-line | Risk: X | Test: Y` format — including `Risk` and `Test` columns the prompt never explicitly asked for. The examples *taught* the schema. This is the most common reason to reach for few-shot: locking output format for downstream parsing.

## Run any variant live

The pre-recorded outputs in `outputs/` are representative — you can rerun any prompt live (~30–60s per call):

```bash
claude --print "$(cat role-senior.md)"
claude --print "$(cat cot-with.md)"
claude --print "$(cat fewshot-with.md)"
```

## Refresh the recorded outputs

If you edit a prompt, capture a fresh output. Run from `/tmp` so the project's CLAUDE.md doesn't contaminate the result:

```bash
cd /tmp
APPLY=/Users/<you>/.../02-prompting/apply
claude --print "$(cat $APPLY/role-senior.md)" > $APPLY/outputs/role-senior.out
```

## Verification checklist

1. Ran `/prompt-techniques` and saw all three demos with before/after outputs.
2. Pointed out the tone shift between the three role variants — same underlying advice, different voices.
3. Pointed out the reasoning structure in the with-CoT output and how it surfaces the "1 week" signal as decisive.
4. Pointed out that the few-shot output adopted `Risk` and `Test` columns that the user never explicitly requested.
5. Can describe when *not* to use chain-of-thought (simple, deterministic tasks where reasoning adds noise).
6. Can describe when few-shot is necessary (when output format must match a specific schema).

## Workflow checkpoint

Open `my-workflow.md` at the repo root. Fill in the Prompt section:

```
### Prompt (fill in after Module 02 Apply)
Prompt file: `02-prompting/apply/workflow-prompt.md`
Status: tested
```

Commit:
```bash
git add 02-prompting/apply/ my-workflow.md
git commit -m "02-prompting/apply: workflow prompt written and tested"
```

**Next:** Module 03 Apply — scope the context Claude needs to run this prompt well.
