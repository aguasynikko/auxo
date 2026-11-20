# Host on Vercel and Supabase; background jobs on Supabase pg_cron

The Next.js app deploys on Vercel (main → production, every PR → preview). Postgres, auth (Apple, Google, email), storage and Edge Functions run on Supabase, with separate projects for development and production. Background jobs (MusicBrainz queue worker, 30-day re-sync, new releases, popular this week) run as Supabase `pg_cron` + Edge Functions rather than Vercel Cron, so they sit next to the data and the queue worker can run every few seconds, which Vercel Cron does not allow.

## Consequences

- Start on Vercel Hobby and Supabase Free; move to Pro on both before public launch (Hobby is non-commercial only; free Supabase pauses when idle and has no backups).
- Secrets live in Vercel and Supabase settings only; `.env.example` lists every variable.
