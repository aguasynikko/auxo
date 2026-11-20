# A user's current rating is separate from their diary entries

Each user has at most one current rating per album, and only current ratings count toward an album's average and aux-worthy status. A diary entry stores a rating snapshot of what the user gave on that listen. Logging with stars updates the current rating; rating from the album page sets it without creating a diary entry.

This differs from "the rating is on the diary entry": with that model a user who relistens five times would count five times in the average, and there'd be no answer to "what does this user think of this album now?".
