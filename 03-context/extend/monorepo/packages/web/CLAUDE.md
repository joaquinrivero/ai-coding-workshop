# Web Package — Acme Platform

React frontend built with Vite. Entry point: `src/main.tsx`.

## Stack

- **Framework**: React 18, TypeScript strict
- **Build**: Vite 5
- **State**: Zustand (global), React Query (server state / API calls)
- **Styling**: Tailwind CSS + Adobe Spectrum components where available
- **Routing**: React Router v6

## [FILL IN] — Component Conventions

[Describe: file structure for components, naming conventions, when to use a component vs. a page vs. a layout]

## [FILL IN] — State Management Rules

[Describe: what goes in Zustand vs. React Query vs. local useState? How is global state organized?]

## [FILL IN] — API Integration

[Describe: where API calls live, how React Query is used, how auth tokens are attached to requests]

## Styling Rules

- Use Tailwind utility classes for layout and spacing
- Use Adobe Spectrum for interactive components (buttons, forms, dialogs)
- Never write custom CSS if a Tailwind class exists for it
- Dark mode: supported via Tailwind `dark:` prefix

## Testing

- Component tests: `src/__tests__/` using Vitest + React Testing Library
- e2e: Playwright tests in `e2e/`
- Run: `npm test` (component) or `npm run test:e2e`

## Build & Dev

- Dev server: `npm run dev` (port 3000)
- Build: `npm run build`
- Preview built output: `npm run preview`

## What Claude Should Know About This Package

- [FILL IN — one key architectural decision that affects almost every change]
- [FILL IN — a common anti-pattern to avoid in this codebase]
- [FILL IN — anything about the Adobe Spectrum integration that's non-obvious]
