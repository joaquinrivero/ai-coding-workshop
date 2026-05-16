# 01-model / Concept — Compare model outputs

**Objective:** Run the same prompt against Haiku, Sonnet, and Opus. Record latency and output quality.

**Concept:** Model tiers differ in capability, speed, and cost. Haiku optimizes for speed and low cost. Opus optimizes for depth and reasoning. Sonnet balances both. Compare one prompt across all three.

**Time:** 15 minutes

## Steps

1. Run `/model-compare` to load the comparison prompt from `prompt.md`.

2. Watch the command run the prompt against all three models. Note the time gap between first and last response.

3. Read all three responses. Fill in the observation table:

| | Haiku | Sonnet | Opus |
|---|---|---|---|
| Response time (faster/slower/slowest) | | | |
| Response length | | | |
| Specificity (vague / concrete / detailed) | | | |
| Any factual differences? | | | |

4. Ask yourself: for the task in `prompt.md`, which model would you use in production? Why?

## Expected output

Three sequential responses to the same prompt. Haiku responds fastest. Opus is slowest and most thorough. Sonnet sits between them.

## Verification checklist

1. Ran the comparison prompt against all three models (Haiku, Sonnet, Opus).
2. Observed a measurable latency difference between Haiku and Opus.
3. Filled in the observation table with at least one difference per row.
4. Can state in one sentence which model you would use for the task in `prompt.md` and why.
