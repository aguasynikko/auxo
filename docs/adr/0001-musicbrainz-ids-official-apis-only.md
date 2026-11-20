# MusicBrainz IDs as primary external IDs; official APIs only

The catalog is built only from official, free APIs: MusicBrainz (source of truth), Cover Art Archive (artwork), Deezer (fast search, artist images, 30-second previews) and optionally Last.fm (tags, listener counts). No website is scraped. MusicBrainz IDs (MBIDs) are the stable external key for albums (release-groups), editions (releases), tracks (recordings) and artists, because they are open, stable and cover the most music.

Catalog rows are keyed by auxo's own ID, with `mbid` and `deezer_id` as unique, nullable external IDs. MusicBrainz is the source of truth whenever a match exists; an album found on Deezer with no confident MusicBrainz match is still usable (an _unmatched album_) and is linked when a match appears. Public URLs use a slug plus a short auxo ID (`/album/blonde-k3f9x2`), never an MBID.

Every catalog row also stores the other sources' IDs (`deezer_id`, `lastfm_url`). Sources are matched by ID. Where only a title match is possible (Deezer → MusicBrainz), we match on artist + title + year and flag the match as low-confidence instead of guessing silently.

## Consequences

- Search-as-you-type comes from Deezer (fast, no key) and must be mapped to MBIDs before anything is stored.
- Attribution to MusicBrainz and Deezer is required on album pages and in About.
