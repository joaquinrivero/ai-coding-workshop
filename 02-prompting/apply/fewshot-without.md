Briefly summarize each of these pull requests:

- PR #481: Adds rate limiting middleware to /api/v2/* endpoints. Configurable per-IP threshold. Default 100 req/min.
- PR #482: Fixes a race condition in the session store that could log users out during concurrent requests.
- PR #483: Refactors the email-sending queue to use the new SendGrid v3 API and removes the deprecated v2 fallback.
