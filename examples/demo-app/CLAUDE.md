# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

`demo-app` is the teaching example for the Claude Code one-day intensive (the wider repo lives at the git root, `../../`). It is a minimal, in-memory auth/session library in TypeScript. The whole app exists to carry **one deliberate bug** — a refresh-token rotation flaw — that threads Modules 2–5 of the course (recover intent → plan the fix → review → verify).

## The deliberate bug — do not "just fix" it

`SessionStore.rotate()` in `src/auth/session-store.ts` issues a new refresh token but **does not remove the previous one**, so the old token still validates after rotation. This is intentional. The fix (`this.sessionsByToken.delete(refreshToken)`, marked with a `TODO (course exercise)`) and the missing regression test in `tests/auth/refresh-token.test.ts` are the exercise students work through.

Only apply the fix when the task is explicitly about fixing the rotation bug. Otherwise leave it and the surrounding `// NOTE`/`// BUG`/`TODO` comments intact — they are course scaffolding, not stale code.

## Commands

Package manager is **pnpm** (an untracked `package-lock.json` may appear in `git status` — ignore it; `pnpm-lock.yaml` is the source of truth).

```bash
pnpm install              # esbuild build approval is pre-configured in pnpm-workspace.yaml
pnpm test                 # run all tests (vitest run, single pass — not watch)
pnpm typecheck            # tsc --noEmit, strict mode
pnpm demo                 # run src/demo.ts — prints the bug live (OLD token still valid after rotation)
```

Run a single test file or filter by name:

```bash
pnpm vitest run tests/auth/refresh-token.test.ts
pnpm vitest run -t "issues a new refresh token"
```

## Architecture

Three source files, ESM + strict TypeScript (no build step — `tsx` runs sources directly):

- `src/auth/session-store.ts` — the heart of the app. `SessionStore` keeps a single `Map<token, Session>` keyed by refresh token; `issue` / `rotate` / `validate` all operate on that map. This is where the bug lives and where every meaningful change happens.
- `src/auth/login.ts` — deliberately trivial credential check that delegates to `store.issue()`. Kept dumb on purpose so the interesting behavior stays in rotation.
- `src/demo.ts` — runnable narrative (`pnpm demo`) that logs the bug's symptom.

Tests mirror `src/` under `tests/auth/` and import sources by relative path.

## Note on pnpm-workspace.yaml

It declares no workspace packages — it exists only to approve esbuild's install script (`allowBuilds` for pnpm 11, `onlyBuiltDependencies` for pnpm 10) so a fresh clone's `pnpm install`/`pnpm test` don't fail the course pre-work checklist. See the comments in that file before changing it.
