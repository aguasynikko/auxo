# Retro: #3 Scaffold the Next.js app with an end-to-end harness

## What went well

- Red → green on Seam 4 was quick: the Playwright test failed for lack of an app, then passed on both projects with a minimal layout and page.
- A deliberate mutation (title "Auxo") confirmed the test catches a real regression, including the lowercase brand rule.
- Pinning `@playwright/test` to the version whose browser is already installed avoided a separate browser download locally.

## What hurt

- `next build` rewrites `tsconfig.json` (adds `.next/dev/types/**/*.ts` and reformats it), which breaks `pnpm format:check` after any e2e run. Fixed by committing the include Next wants.
- `next dev` writes an `AGENTS.md` by default. Turned off with `agentRules: false`; project instructions stay in CLAUDE.md.
- `pnpm format:check | tail -1` hides the exit code; the pre-commit hook caught it.
- Connecting Vercel is an account-level step and collides with the spec: ADR 0007 says main → production, while the spec says the first production deploy is the last Milestone 1 ticket.

## What to change

- Run `pnpm format:check` unpiped before committing.
- Decide whether Vercel production deploys from main stay off until the launch ticket, and record it in ADR 0007 or the spec.
- The phone project runs Chromium with iPhone viewport emulation. Add a WebKit project once screens exist, since iPhone Safari is the main target (ADR 0005).
