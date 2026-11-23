# auxo glossary

auxo is a social music diary: people log what they listen to, rate albums and tracks, write reviews and follow each other's taste. This file is the ubiquitous language. Use these words in code, UI copy, tickets and docs.

The product name is always lowercase: **auxo**.

## Catalog

**Artist**:
A person or group credited on albums, identified by a MusicBrainz artist ID.
_Avoid_: band, performer, creator

**Artist credit**:
The full, ordered credit line on an album or track (e.g. "Artist A feat. Artist B"), made of one or more artists.
_Avoid_: byline

**Album**:
Any release-group: an album, EP, single, live album, compilation or soundtrack. The thing people rate, log and review. Its kind is the **album type**.
_Avoid_: record, release, LP, title

**Album type**:
The kind of album: Album, EP, Single, Live, Compilation, Soundtrack, Other. A label only; every type behaves the same.

**Edition**:
One concrete release of an album (original, deluxe, remaster, regional pressing). An album has one or more editions.
_Avoid_: release, version, pressing

**Canonical edition**:
The edition whose artwork and tracklist an album page shows by default: the earliest official edition with cover art, else the earliest official edition.
_Avoid_: main edition, default release

**Track**:
A recording as it appears on an album. The same recording on two editions is the same track.
_Avoid_: song (UI copy only), recording (data-source term only)

**Tracklist**:
The ordered tracks of one edition.

**Unmatched album**:
An album auxo knows only from Deezer because no confident MusicBrainz match exists yet. Fully usable; linked to MusicBrainz later if a match appears.
_Avoid_: orphan, Deezer album

## People

**User**:
A person with an auxo account.
_Avoid_: member, account (for the person)

**Profile**:
A user's public face: username, avatar, bio, top 3, stats and recent activity.

**Username**:
A user's unique, lowercase handle (3–20 characters from a–z, 0–9, `_`, `.`), used in profile URLs. Changeable; old usernames are not reserved.
_Avoid_: handle, screen name

**Admin**:
A user with the admin role, who can review reports and hide content. Assigned only outside the app.
_Avoid_: moderator, staff

## Listening

**Log** (verb only):
The action of recording that you listened to an album. Logging creates a diary entry. Never used as a noun.
_Avoid_: scrobble, "a log"

**Diary entry**:
The record of one listen to one album: date listened (today or earlier), optional edition, optional rating snapshot, optional review, relisten flag and tags.
_Avoid_: listen (as a noun), log, entry, activity

**Diary**:
A user's diary entries in reverse date order, grouped by month.
_Avoid_: history, timeline, log

**Relisten**:
A diary entry for an album the user had already listened to. On by default when an earlier diary entry exists; the user can change it.
_Avoid_: repeat, replay

**Tag**:
A free-text, lowercase label a user puts on their own diary entry (up to 10). Personal, not shared vocabulary.
_Avoid_: genre (genres come from the catalog), label

**Listen later**:
A user's saved list of albums they intend to hear. Logging an album removes it.
_Avoid_: watchlist, queue, wishlist, saved

## Opinions

**Rating**:
A user's current star score for an album: 0.5–5 in half-star steps, one per user per album. Set by tapping stars or by logging with stars; only the current rating counts toward averages.
_Avoid_: score, grade, stars (as a noun for the data)

**Rating snapshot**:
The stars recorded on a diary entry at the time of that listen. Historical; does not count toward averages.

**Track rating**:
A user's star score for a track. Separate from album ratings; never affects an album's average.
_Avoid_: song rating

**Average rating**:
The mean of all users' current album ratings for an album.

**Rating curve**:
Track ratings plotted in tracklist order, showing an album's high and low points. A user's own curve, or the community curve (tracks with at least 3 track ratings).

**Aux-worthy**:
A badge on an album whose average rating is at least 4.0 from at least 10 ratings.
_Avoid_: certified, top-rated, hit

**Review**:
Text (up to 5,000 characters) attached to exactly one diary entry. Editable, marked "edited" once changed.
_Avoid_: comment, post, note

**Loved**:
An album a user has marked with the heart. Unlimited, independent of rating.
_Avoid_: favorite, liked (likes are for reviews)

**Albums logged** (stat):
The number of distinct albums with a diary entry dated in a period (e.g. this year). Not the number of diary entries.

**Top 3**:
The three albums a user places on the podium at the top of their profile, in order 1–3. Chosen from any album.
_Avoid_: favorites, favourite albums, top picks

## Appearance

**Theme**:
A user's choice of look in Settings: Catalogue (the default), Sleeve or Standard. A theme swaps colours, star colour, glass tint, display face and corner radii; layout and components stay the same. Stored on the profile.
_Avoid_: skin, style, direction (that was a design-session word)

**Appearance mode**:
Light or dark. Follows the system in every theme; not a user setting in Milestone 1.
_Avoid_: theme (for light/dark)

## Social (Milestone 2)

**Follow**:
A one-way link from one user to another. Pending until approved when the followed user is private; otherwise accepted at once.

**Private account**:
A user whose profile and content are visible only to accepted followers.

**Like**:
A user's heart on someone's review.
_Avoid_: love (that's for albums)

**List**:
A user-made, titled collection of albums, ranked or unranked.
_Avoid_: collection, playlist (lists hold albums, not tracks)

**Taste match**:
How closely two users agree: 1 − (mean absolute difference of their ratings on shared albums ÷ 4.5), shown as a percent. Shown only with at least 5 shared rated albums.
_Avoid_: compatibility, similarity score

**Block**:
A user's choice to make another user unable to see or interact with them, both ways.

**Report**:
A user's flag on a review, list or profile, for an admin to review.

**Hidden**:
The state of content an admin has taken down. Visible only to its author (with a notice) and admins.
_Avoid_: deleted, removed, banned
