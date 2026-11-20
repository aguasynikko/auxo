# Lazy catalog caching with a database-backed MusicBrainz queue

Search results are live and never stored. An album, its editions, tracks and artists are upserted into Postgres the first time someone opens, rates, logs or saves it, and every later read comes from the database. This keeps the catalog small and makes pages fast, at the cost of a slower first view.

MusicBrainz allows 1 request per second per client. Serverless functions can't share an in-memory queue, so fetches go into a `musicbrainz_queue` table that a single scheduled worker drains at 1 request/second, with a descriptive `User-Agent` and retry with backoff on 503. All external calls run server-side; API keys never reach the client.

## Considered options
- In-memory queue or rate limiter in route handlers: rejected, serverless instances don't share memory.
- Pre-importing the whole MusicBrainz dump: rejected for v1, too heavy for free-tier Postgres. A one-time seed of ~500 popular albums covers day one.

## Consequences
- The UI needs a "still loading this album" state for first views.
- Cached albums older than 30 days are re-synced by a background job.
