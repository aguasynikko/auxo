# auxo — Milestone 1 spec: the core loop

Vocabulary follows [GLOSSARY.md](./GLOSSARY.md). Decisions follow the [ADRs](./adr/). Visual design follows `DESIGN.md` (written in the design session; see Further Notes).

## Problem Statement

People who care about music have nowhere good to keep track of what they listen to. Streaming apps remember plays but not opinions: there's no place to say "I heard this album on a rainy Tuesday and it was a 4.5", to see how your taste has moved over a year, or to remember the record a friend told you to try. Notes apps and spreadsheets work but are lonely and ugly. Existing music-rating sites feel like databases, not like something you'd open every day on your phone.

## Solution

auxo is a music diary that installs on your iPhone home screen and feels like a first-party Apple app. You search for any album, open a page where the artwork is the hero, rate it in half stars, rate its tracks inline, and log a listen with a date, an optional review and tags. Everything you log builds a diary grouped by month and a profile with your top 3, your stats and your recent activity. A listen later list keeps track of what you mean to hear next. Milestone 1 is the single-player core loop — search, album, rate, log, diary, profile — done well enough that people come back daily. Social features follow in Milestone 2.

## User Stories

### Getting in

1. As a new visitor, I want to sign up with Apple, Google or email, so that I can start without creating yet another password.
2. As a returning user, I want to stay signed in on my phone, so that opening auxo goes straight to my content.
3. As a new user, I want to choose a username, so that my profile has a URL I recognise.
4. As a new user, I want to be told immediately if a username is taken or invalid, so that I don't fail at the end of a form.
5. As a new user, I want to pick my top 3 albums during onboarding, so that my profile shows who I am from day one.
6. As a new user, I want to rate 5–10 well-known albums during onboarding, so that my profile and stats aren't empty.
7. As a new user, I want to skip any onboarding step, so that I'm never forced through setup I don't care about.
8. As a new user who skipped everything, I want friendly empty states with one clear action each, so that the app never looks broken or abandoned.
9. As an iPhone user, I want to add auxo to my home screen with the auxo icon and the name "auxo", so that it feels like a native app.

### Finding music

10. As a user, I want search results to appear as I type, so that finding an album feels instant.
11. As a user, I want results grouped into albums, artists and tracks, so that I can find what I mean quickly.
12. As a user, I want each album result to show artwork, title, artist, year and album type, so that I can tell editions, singles and similarly named albums apart.
13. As a user, I want searching a track to lead me to the album it's on, so that I can rate or log it.
14. As a user, I want searches in non-English scripts to work, so that I can find music in any language.
15. As a user, I want a clear "nothing found" state, so that I know to try another spelling.

### The album page

16. As a user, I want to see large artwork, title, artist credit, year, album type and genres, so that I know I'm on the right album.
17. As a user, I want the album page to open immediately even the first time anyone opens it, so that I'm never staring at a blank screen.
18. As a user, I want skeleton placeholders while tracks and editions load, so that I know what's coming.
19. As a user, I want to see the tracklist of the canonical edition by default, so that I see the album as originally released.
20. As a user, I want to switch editions (deluxe, remaster) with an edition picker, so that I can see bonus tracks without leaving the page.
21. As a user, I want switching edition never to change which album my rating belongs to, so that ratings stay on one page.
22. As a user, I want to see the average rating and how many ratings it's based on, so that I can judge how much to trust it.
23. As a user, I want a rating distribution histogram, so that I can tell a divisive album from a consensus one.
24. As a user, I want highly rated albums to show an aux-worthy badge, so that I can spot standout records at a glance.
25. As a user, I want to see recent reviews on the album page, so that I can read what others thought.
26. As a user, I want a clean placeholder cover when an album has no artwork, so that the page still looks intentional.
27. As a user, I want credits like "feat." shown consistently, so that collaborations read cleanly.
28. As a user, I want to see that the data comes from MusicBrainz and Deezer, so that sources are credited.
29. As a user, I want unmatched albums to work fully, so that obscure releases aren't second-class.

### Rating

30. As a user, I want to rate an album from 0.5 to 5 stars in half steps, so that I can express fine-grained opinions.
31. As a user, I want to rate an album without logging a listen, so that I can record opinions about albums I heard long ago.
32. As a user, I want to change or remove my rating, so that my profile reflects what I think now.
33. As a user, I want a satisfying bounce when I set stars, so that rating feels physical.
34. As a screen-reader user, I want star controls announced as "4.5 out of 5 stars", so that I can rate without seeing them.
35. As a user, I want to mark an album as loved with the heart, independent of stars, so that I can flag albums I'm attached to.
36. As a user, I want to rate individual tracks inline in the tracklist, so that I can record standout and weak songs.
37. As a user, I want to see my own rating curve across the tracklist, so that I can see an album's highs and lows for me.
38. As a user, I want to see the community rating curve where enough people rated tracks, so that I can compare my take with others'.
39. As a user, I want track ratings not to change an album's average, so that album ratings keep one meaning.

### Logging and the diary

40. As a user, I want to log a listen from the album page, the tab bar's Log + button, or a long-press menu, so that logging is always one step away.
41. As a user, I want the log sheet to default the date to today, so that logging what I'm hearing now takes one tap.
42. As a user, I want to set an earlier date but not a future one, so that my diary stays honest.
43. As a user, I want to add stars while logging, so that my rating snapshot and current rating update together.
44. As a user, I want logging without stars to leave my current rating alone, so that a casual log doesn't erase my opinion.
45. As a user, I want to write a review of up to 5,000 characters when logging, so that I can say why.
46. As a user, I want to edit my review later and have it marked "edited", so that I can fix typos honestly.
47. As a user, I want relisten turned on automatically when I've logged an album before, and to switch it myself, so that repeat listens are tracked without effort.
48. As a user, I want to add up to 10 personal tags with autocomplete from my earlier tags, so that I can organise my diary my way.
49. As a user, I want to optionally record which edition I listened to, so that I remember I heard the deluxe.
50. As a user, I want my diary in reverse date order grouped by month, so that I can scroll through my listening life.
51. As a user, I want each diary entry to show artwork, date, rating snapshot, relisten and whether it has a review, so that I can scan it quickly.
52. As a user, I want to open a diary entry to edit or delete it, so that I can correct mistakes.
53. As a user, I want deleting a diary entry to delete its review but not my current rating, so that cleanup doesn't change my opinions.

### Listen later

54. As a user, I want a bookmark button on every album, so that I can save albums to hear later.
55. As a user, I want a listen later list on my profile, so that I know what to play next.
56. As a user, I want logging an album to remove it from listen later automatically, so that the list stays current.
57. As a user, I want a small bounce on the bookmark, so that saving feels acknowledged.

### Artist page

58. As a user, I want an artist page with a photo, tags and bio, so that I know who I'm looking at.
59. As a user, I want the discography grouped into albums, EPs, singles and others, so that I can find the main records first.
60. As a user, I want to see the artist's highest-rated albums on auxo, so that I know where to start.
61. As a user, I want artists with similar names to be distinct pages, so that I never land on the wrong one.

### Profile

62. As a user, I want my top 3 at the top of my profile as large artwork tiles, so that my taste is the first thing people see.
63. As a user, I want to drag to reorder my top 3, so that I can rank them.
64. As a user, I want to see albums logged this year, top genres, top artists and my rating spread, so that I learn about my own taste.
65. As a user, I want my recent activity on my profile, so that I can see what I've been playing.
66. As a user, I want to view other users' profiles, so that I can explore their taste.
67. As a user, I want to edit my display name, username, avatar and bio, so that my profile looks how I want.

### Account and data

68. As a user, I want to export all my data as JSON plus a diary CSV, so that I own what I've written.
69. As a user, I want to delete my account and all my data, so that I can leave cleanly.
70. As a user, I want a clear confirmation before deletion, so that I don't delete by accident.
71. As a user, I want an About screen crediting MusicBrainz and Deezer, so that I know where the data comes from.

### Look, feel and access

72. As a mobile user, I want a bottom tab bar (Home, Search, Log +, Diary, Profile) on glass that shrinks when I scroll down, so that content has room.
73. As a desktop or iPad user, I want a sidebar with the auxo wordmark instead of the tab bar, so that the layout uses the width.
74. As a user, I want light and dark mode that follow my system, so that auxo matches my phone.
75. As a user who prefers reduced motion or transparency, I want auxo to honour those settings, so that it's comfortable to use.
76. As a keyboard user, I want every action reachable by keyboard with visible focus, so that I'm not locked out.
77. As a user with large text, I want layouts to scale, so that I can read everything.
78. As a user, I want long-press or right-click on any album to Log, Rate, Listen later or Share, so that common actions are quick.

### Operating the catalog

79. As the operator, I want a one-time seed of ~500 popular albums plus a curated onboarding set, so that the app feels alive on day one.
80. As the operator, I want MusicBrainz calls never to exceed 1 per second, so that auxo stays a good API citizen and isn't blocked.
81. As the operator, I want cached albums re-synced after 30 days, so that corrections upstream reach auxo.
82. As the operator, I want low-confidence matches flagged, so that I can review them.

## Implementation Decisions

### Architecture

- Next.js App Router with TypeScript and Tailwind; design tokens as CSS variables (light/dark). Supabase for auth, Postgres, storage (avatars) and scheduled Edge Functions. Hosting on Vercel + Supabase (ADR 0007).
- All external API calls are server-side. The browser talks only to auxo's own server actions/route handlers and to Supabase with the user's session (RLS applies).
- Data access through supabase-js with generated types; schema in SQL migrations; no ORM (ADR 0008). The service-role key is used only by catalog sync and background jobs.
- PWA: web manifest with `name` and `short_name` "auxo", home-screen icons, standalone display, theme colours per mode (ADR 0005).

### Modules

1. **Catalog sources** — thin clients for MusicBrainz, Cover Art Archive and Deezer. MusicBrainz client sends the `User-Agent` from env and is only ever called by the queue worker. Deezer is called directly for search.
2. **Catalog matcher** — normalises artist credits, maps Deezer albums to MusicBrainz release-groups by ID where possible, else by artist + title + year with a confidence flag. Picks the canonical edition (earliest official with cover art, else earliest official).
3. **Catalog store** — upserts artists, albums, editions, tracks and artist credits; exposes `ensureAlbum(ref)` which creates an album row immediately from whatever data is at hand (Deezer) and enqueues a MusicBrainz fetch at user priority.
4. **MusicBrainz queue worker** — a scheduled Edge Function that drains `musicbrainz_queue` at ≤1 request/second, user priority before background, exponential backoff on 503 with a retry cap, and marks jobs done/failed.
5. **Catalog jobs** — 30-day re-sync (background priority); seed import (~500 popular albums plus the curated onboarding set).
6. **Domain layer (server actions)** — the only write path for user data: `rateAlbum`, `clearRating`, `setLoved`, `rateTrack`, `logAlbum`, `updateDiaryEntry`, `deleteDiaryEntry`, `toggleListenLater`, `setTop3`, `updateProfile`, `claimUsername`, `exportMyData`, `deleteAccount`; plus reads `searchCatalog`, `getAlbumPage`, `getArtistPage`, `getDiary`, `getProfile`.
7. **UI shell** — `<Glass>` material, tab bar/sidebar, nav bar with collapsing large title, sheets with detents, context menus, skeletons, empty states. Specified in DESIGN.md.

### Schema (Milestone 1)

- Catalog: `artists`, `albums` (release-group level: type, title, year, genres, canonical edition, `mbid`, `deezer_id`, `match_confidence`, `last_synced_at`), `album_editions`, `tracks` (recording-level: `mbid`), `edition_tracks` (edition, track, position, disc), `album_artists` / `track_artists` (ordered credits with join phrases), `musicbrainz_queue` (entity, external ID, priority, attempts, next_attempt_at, status).
- Every catalog table keys on an auxo UUID with a short public ID for URLs; `mbid` and `deezer_id` are unique and nullable (ADR 0001).
- User data: `profiles` (username unique, display name, avatar, bio, `role` user|admin, `is_private` reserved for M2), `album_ratings` (one per user per album; ADR 0004), `track_ratings` (user, track), `loved_albums`, `diary_entries` (user, album, optional edition, listened_on, rating snapshot, relisten, tags as a text array), `reviews` (one per diary entry, body ≤5,000, `edited_at`, `hidden` reserved for M2), `top3` (user, position 1–3, album; unique per position and per album), `listen_later` (user, album, added_at).
- Derived: album average and rating counts per half-star kept in an aggregate table updated by trigger on `album_ratings`; aux-worthy computed from it with thresholds in config (avg ≥ 4.0, ≥ 10 ratings).
- RLS on every user table: anyone signed in can read in M1; only the owner can write their rows; `role` is never writable from the client (ADR 0006). Policies are shaped so M2's private/blocked/hidden rules add predicates rather than restructure.

### Rules encoded in the domain layer

- Logging with stars sets the rating snapshot and upserts the current rating; without stars it leaves the current rating untouched.
- `listened_on` defaults to today in the user's timezone and must not be in the future.
- Relisten defaults to true when the user has an earlier diary entry for that album.
- Logging removes the album from the user's listen later.
- Deleting a diary entry deletes its review; current rating is unchanged.
- Tags: trimmed, lowercased, de-duplicated, max 10.
- Username: 3–20 chars `[a-z0-9_.]`, unique, changeable; old names not reserved.
- Community rating curve includes only tracks with ≥3 track ratings.
- Export: ZIP with JSON of everything the user owns plus `diary.csv`; albums include `mbid` and `deezer_id`.
- Delete account: removes the auth user and every owned row (cascade) and avatar files.

### Search

- Search-as-you-type hits Deezer through a server route with debounce on the client and short-lived HTTP caching; results are not stored. Opening a result calls `ensureAlbum` and navigates to the album's auxo URL.
- Albums already in the catalog are shown from the database when matched by `deezer_id`.

### Routes

- `/album/<slug>-<shortid>`, `/artist/<slug>-<shortid>`, `/u/<username>`, `/diary`, `/search`, `/onboarding`, `/settings`, `/about`, `/glass-lab` (dev only). Milestone 1 pages require sign-in; public rendering is Milestone 2.

### Environment variables (added to `.env.example` as they appear)

Supabase URL and anon key, Supabase service-role key (server only), MusicBrainz User-Agent, site URL. Last.fm key reserved for M2.

## Testing Decisions

- Good tests exercise external behaviour through a seam and would survive a rewrite of the internals. No tests of private helpers, React component internals or API client internals.
- **Seam 1 — domain layer:** server actions called as a specific signed-in user against local Supabase (real schema and RLS), with MusicBrainz, Cover Art Archive and Deezer faked at the HTTP level using recorded fixtures. Fixtures must include: an album with many editions, two artists with similar names, a release with no artwork, a non-English title, a "feat." credit, and an unmatched album. Most tests live here.
- **Seam 2 — queue worker:** same HTTP fakes plus a controllable clock. Asserts ≤1 request/second, user priority first, backoff and retry cap on 503, and correct upserts.
- **Seam 3 — RLS (pgTAP):** acting as different users; owner-only writes, `role` immutable from clients, cross-user writes rejected.
- **Seam 4 — Playwright, few:** sign-up → onboarding; search → album → rate → log → diary; listen later round trip; delete account. Phone and desktop viewports.
- Prior art: none yet; the first ticket that touches each seam sets up its harness and becomes the pattern.
- Visual quality and Glass are reviewed by eye on a real iPhone (Safari + installed PWA) and Chrome desktop, plus an impeccable critique pass on every screen ticket.

## Out of Scope

- Everything in Milestone 2: lists, follows and activity feed, review likes, private accounts, taste match, share cards, public pages and link previews, Discover (popular this week, new releases), reporting, blocking and the admin page.
- Full-track streaming, comments, DMs, notifications, Spotify or Last.fm import, AI recommendations, the "your year on auxo" recap.
- Last.fm data.
- Deezer 30-second previews: an optional final ticket only if time allows.
- A native iOS app.

## Further Notes

- **Design dependency:** screen tickets are blocked by the design session (impeccable: 2–3 directions → DESIGN.md) and the `<Glass>` + `/glass-lab` prototype tested on a real iPhone.
- **Brand:** the product name is always lowercase "auxo", including page titles, the manifest and the icon label. Short UI labels may be lowercase in the auxo voice; longer text uses sentence case.
- **Plans:** free Vercel and Supabase plans during development; upgrade both to Pro before public launch.
- **Domain:** TBD; HTTPS is required for the PWA. The first production deploy happens in the last Milestone 1 ticket.
