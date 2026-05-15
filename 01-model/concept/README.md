# Beginner — Model Comparison

**Objective:** Run the same prompt against Haiku, Sonnet, and Opus. Record latency and output quality differences. Fill in the observation table.

**Concept:** The three model tiers differ in capability, speed, and cost. Haiku is optimized for speed and low cost; Opus for depth and reasoning; Sonnet for the balance between them. Running the same prompt across all three makes the differences observable.

**Time:** 15 minutes

## Steps

1. Run `/model-compare` to load the comparison prompt from `prompt.md`.

2. The command runs the prompt against all three models in sequence. While it runs, note the time gap between the first and last response.

3. Read all three responses. Fill in the observation table:

| | Haiku | Sonnet | Opus |
|---|---|---|---|
| Response time (faster/slower/slowest) | | | |
| Response length | | | |
| Specificity (vague / concrete / detailed) | | | |
| Any factual differences? | | | |

4. Ask yourself: for the task in `prompt.md`, which model would you use in production? Why?

## Expected output

Three responses to the same prompt, produced sequentially. Haiku responds fastest. Opus is slowest and typically most thorough. Sonnet is between them on both dimensions.

## Verification checklist

1. Ran the comparison prompt against all three models (Haiku, Sonnet, Opus).
2. Observed a measurable latency difference between Haiku and Opus.
3. Filled in the observation table with at least one difference per row.
4. Can state in one sentence which model you would use for the task in `prompt.md` and why.
