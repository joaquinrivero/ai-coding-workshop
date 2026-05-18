Summarize each pull request using the exact format shown in the examples below.

Examples:

Input: PR #100 — Adds caching layer in front of the database for the /products endpoint.
Output: [PR #100] Cache layer for /products | Risk: med | Test: load test before/after, verify cache invalidation on writes

Input: PR #101 — Bumps Node.js version from 18 to 20 in CI.
Output: [PR #101] Node 18 → 20 in CI | Risk: low | Test: green CI run on this PR + one downstream service

Now summarize each of these in the same format. Output one line per PR, no preamble.

- PR #481: Adds rate limiting middleware to /api/v2/* endpoints. Configurable per-IP threshold. Default 100 req/min.
- PR #482: Fixes a race condition in the session store that could log users out during concurrent requests.
- PR #483: Refactors the email-sending queue to use the new SendGrid v3 API and removes the deprecated v2 fallback.
