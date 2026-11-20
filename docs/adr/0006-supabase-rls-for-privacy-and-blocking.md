# Privacy, blocking and hiding are enforced with Supabase row-level security

Who can see what is enforced in Postgres with row-level security on every user table, not in application code. Private profiles' content is visible only to accepted followers; blocked users can't see each other's content in either direction; hidden content is visible only to its author and admins. Because public pages, link previews, share cards, feeds and search all read through the same policies, a missed check in one route can't leak data.

The admin role lives on the profile and can only be changed outside the app (Supabase dashboard or SQL); RLS rejects any client attempt to change it.

## Consequences

- Server code that uses the service-role key bypasses RLS, so it must be limited to catalog sync and background jobs, never to serving user content.
- Every user table needs RLS tests covering private, blocked and hidden cases.
