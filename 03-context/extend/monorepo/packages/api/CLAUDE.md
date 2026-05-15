# API Package — Acme Platform

Node.js REST API. Entry point: `src/index.ts`.

## Stack

- **Runtime**: Node.js 20 LTS
- **Framework**: Express 4.x
- **Database**: PostgreSQL via `pg` (connection pool in `src/db/pool.ts`)
- **Auth**: JWT (access token 15min, refresh token 7d)
- **Validation**: Zod schemas in `src/schemas/`

## [FILL IN] — Route Conventions

[Describe: URL structure, versioning, how routes are organized in the codebase]

## [FILL IN] — Auth Patterns

[Describe: how auth middleware is applied, what routes are public vs. protected, how to test auth in dev]

## [FILL IN] — Database Patterns

[Describe: migration tool, naming conventions for tables/columns, how to write a new query]

## Error Handling

- All route handlers use the central error middleware in `src/middleware/error.ts`
- Never throw raw errors from routes — use `next(err)` or the `AppError` class
- HTTP status codes: follow REST conventions strictly

## Testing

- Unit tests: `src/__tests__/` — test business logic, not HTTP layer
- Integration tests: `src/__tests__/integration/` — use test DB
- Run: `npm test` (unit) or `npm run test:integration`

## What Claude Should Know About This Package

- [FILL IN — one key architectural decision that affects almost every change]
- [FILL IN — the most common mistake engineers make here]
- [FILL IN — anything about this package that's different from "standard" Express]
