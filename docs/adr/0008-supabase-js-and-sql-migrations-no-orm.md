# supabase-js and plain SQL migrations, no ORM

Data access uses `supabase-js` with types generated from the schema, and the schema lives in plain SQL migrations managed by the Supabase CLI. We don't use an ORM (Prisma, Drizzle) because they connect as a privileged database role and bypass row-level security, which is how auxo enforces privacy and blocking (ADR 0006). Policies are written in SQL next to the tables they protect and tested with pgTAP.
