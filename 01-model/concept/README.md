# 01-model / Concept — Compare model outputs

**Objective:** Run the same code-review prompt against Haiku, Sonnet, and Opus. Compare latency and which bugs each model catches.

**Concept:** Model tiers differ in capability, speed, and cost. Haiku optimizes for speed and low cost. Opus optimizes for depth and reasoning. Sonnet balances both. Compare one prompt across all three.

**Time:** 15 minutes

## Steps

1. Run `/model-compare` to load the comparison prompt from `prompt.md`.

2. Watch the command run the prompt against all three models. Note the time gap between first and last response.

3. Read all three responses. Fill in the observation table:

| | Haiku | Sonnet | Opus |
|---|---|---|---|
| Response time (fastest / mid / slowest) | | | |
| Number of bugs caught | | | |
| Caught the empty-array case? (yes/no) | | | |
| Caught the NaN / non-numeric case? (yes/no) | | | |

4. Ask yourself: for production code review, which model would you use? Why?

## Expected output

Three short bullet lists of bugs found in the `median` function. Haiku and Sonnet typically catch 3–4 bugs each. Opus catches 5–6, surfacing the silent edge cases (empty input, `NaN`). Opus takes roughly 2x as long as Haiku.

There are six bugs to find. Use this as the answer key:

1. `sort()` mutates the caller's input array.
2. `sort()` uses lexicographic order on numbers (`[10, 2, 9]` stays `[10, 2, 9]`).
3. Even-length arrays should average the two middle values, not pick one.
4. `Math.floor(length / 2)` picks the upper middle, not the lower.
5. Empty array silently returns `undefined`.
6. Non-numeric or `NaN` inputs produce nonsense silently.

## Verification checklist

1. Ran the comparison prompt against all three models (Haiku, Sonnet, Opus).
2. Observed a measurable latency difference between Haiku and Opus.
3. Counted bugs caught by each model in the observation table.
4. Identified at least one bug Opus caught that Haiku missed.
5. Can state in one sentence when each model tier is the right choice for code review.
