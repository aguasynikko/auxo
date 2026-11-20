# auxo

auxo is a social music diary — Letterboxd for albums. People log listens, rate albums and tracks, write reviews, keep a listen later list, and (Milestone 2) follow each other. Mobile-first Next.js PWA on Supabase, hosted on Vercel.

The name is always lowercase: **auxo**, also at the start of a sentence, in titles, the manifest and the icon label.

## Read first

- **Glossary:** [docs/GLOSSARY.md](docs/GLOSSARY.md) — use its terms in code, copy and tickets (album / edition / track; log / diary entry / review / rating).
- **Spec:** [docs/SPEC.md](docs/SPEC.md) (issue #1). Tickets are its sub-issues.
- **Decisions:** [docs/adr/](docs/adr/) — check before changing data access, catalog sync, ratings, privacy or hosting.
- **Design:** `DESIGN.md` (from #2) before any UI work.
- **Tracker:** GitHub Issues — how to read and write them in [docs/agents/issue-tracker.md](docs/agents/issue-tracker.md); labels in [docs/agents/triage-labels.md](docs/agents/triage-labels.md).

## Commands

pnpm only. `pnpm lint`, `pnpm typecheck`, `pnpm test`, `pnpm format`; full list in `package.json`. The pre-commit hook runs lint-staged, typecheck and tests; CI runs lint, format check, typecheck and tests on every PR.

## Layout

- `docs/` — spec, glossary, ADRs, agent docs, `retros/`
- `tests/` — Vitest tests
- `.claude/` — project settings and the git guardrail hook
- `.github/workflows/` — CI
- Coming with the first tickets: the Next.js app (#3) and `supabase/` with migrations and Edge Functions (#4)

## Conventions

- Test through the four seams in the spec's Testing Decisions; most tests call the domain layer as a signed-in user against local Supabase with external HTTP faked.
- User data is written only through the domain layer; privacy is enforced by RLS (ADR 0006). The service-role key is for catalog sync and background jobs only.
- External APIs (MusicBrainz, Cover Art Archive, Deezer) are called server-side only; MusicBrainz only through the queue (ADR 0002). Official APIs only.
- UI copy: short labels may be lowercase in the auxo voice ("nothing on the aux yet"); longer text uses sentence case.

## Git and authorship

The repo owner is the only author. Write every commit message, PR, issue and file as if the owner wrote it.

- Commit as the owner, unsigned, without touching git config (this container's default identity and signing key aren't the owner's):
  `git -c user.name=aguasynikko -c user.email=149151463+aguasynikko@users.noreply.github.com -c commit.gpgsign=false commit …`
- Commit messages and PR descriptions describe the change and stop there: no co-author trailers, no "Generated with" lines, no emoji signatures.
- Keep Claude, Anthropic and AI out of commit messages, PRs, issues, ticket files, code comments, README and every other file.

## Workflow
- One ticket per session, on branch ticket/<number>-<slug>
- Build with /implement (test-first), then run /retro before /clear
- PRs link the issue ("Closes #N")
- When a decision changes, update the spec or add an ADR
- If a ticket can't be finished in one session, stop, split it with /to-tickets, and continue

Until `/implement` and `/retro` are installed: build test-first with `/tdd`, and write the retro by hand to `docs/retros/<number>-<slug>.md` (what went well, what hurt, what to change). Screen tickets also get an `/impeccable` critique pass before closing.

## Definition of done
- All tests pass and CI is green
- Every acceptance criterion in the ticket is checked
- Spec, glossary, or ADRs updated if behavior or decisions changed
- No secrets committed; new env vars added to .env.example
- PR opened and linked to the issue

## Review cadence
Every 5–10 tickets or at the end of a milestone: read all docs/retros/, find recurring problems,
propose changes to CLAUDE.md, the spec, or the workflow (wait for approval), then run /improve-codebase-architecture.
