# Acme Platform — Mono-repo

This repo contains the full Acme platform: API backend and web frontend.

## Repository Structure

```
packages/
  api/    — Node.js REST API (Express + PostgreSQL)
  web/    — React frontend (Vite + TypeScript)
```

## Shared Conventions

- **Language**: TypeScript everywhere (strict mode)
- **Formatting**: Prettier with shared config at root `.prettierrc`
- **Linting**: ESLint with shared config at root `.eslintrc.js`
- **Testing**: Vitest for unit tests, Playwright for e2e
- **Commits**: Conventional Commits (feat:, fix:, chore:, docs:)
- **Branching**: `main` is production. Feature branches: `feat/<ticket>-<slug>`

## [FILL IN] — CI/CD

[Describe: what CI system is used? What runs on PR? What must pass before merge?]

## [FILL IN] — Shared Tooling

[Describe: any shared scripts, Makefiles, or root-level commands that work across packages]

## [FILL IN] — Environment Variables

[Describe: where are env vars documented? What's the naming convention? What's secret vs. committed?]

## What Claude Should Always Do in This Repo

- Use TypeScript, not JavaScript
- Follow Conventional Commits format for any suggested commit messages
- Check for a local type definition before adding an `any` type
- Run `npm test` before suggesting a PR is ready

## What Claude Should Never Do

- Commit secrets or API keys
- Use `console.log` in production code (use the logger utility)
- Skip types — no implicit `any`
- Modify `package-lock.json` by hand
