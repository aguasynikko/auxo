---
version: 1
slug: "docs-design-reference-html"
primary_target: "docs/design/reference.html"
related_targets: ["docs/design/directions/index.html"]
---

## Scope

The auxo app shell and its first two screens, Home (Milestone 1, personal) and the album page, as the reference for every later screen ticket. Visitor mode: Operate. Mobile-first PWA, iPhone installed PWA first.

## Audience and job

Album obsessives on an iPhone, one-handed, usually mid-listen. Job: log a listen, rate an album and its tracks, read what others thought, save albums to listen later.

## Decisions from the round (issue #2)

- Owner picked Catalogue as the default look, with Sleeve and Standard as alternative themes chosen in Settings. Themes swap tokens only (palette, star colour, glass tint, type voice, radii) over Catalogue's shared layout and components. Sleeve additionally grounds the album page in the album's sampled tone. Light and dark follow the system in every theme.
- Log is a separate round glass button beside a four-tab bar (Home, Search, Diary, Profile), not a middle tab.
- Constraints: lowercase auxo; no Apple logos, trademarks or the Apple Music name; refraction is Chromium-only, Safari fallback must look finished; reduced motion and reduced transparency honoured.

## Direction contract

THESIS: auxo as a record label's house style: an exact, quiet frame of type and numbers that presents every cover the same way, so the artwork changes and the frame never does. It refuses the streaming-store page (big tinted hero, carousels of carousels) and the rating-site table.

OWN-WORLD: Cool paper grey #f2f3f5 and ink #0b0c0e (dark: true black and #f3f4f6), one ultramarine #2e3bff for actions and selection, six series colours marking album type. Ink stars, not gold. Heavy system sans with tight tracking, tabular numerals, uppercase spec lines at 11px with 0.06em tracking. Small radii on artwork (4px), 14–16px on panels. Clear, nearly colourless glass bars.

STORY: The visitor sees what they logged lately and what is waiting on listen later, logs a listen in one tap, opens an album, sees their rating and everyone's, rates tracks inline, and reads reviews.

FIRST VIEWPORT: Home: large wordmark title with the ultramarine series square and avatar; the full-width ultramarine "What's on the aux?" log block; listen later shelf of 132px covers with spec lines; the month's diary list with day numerals begins above the floating glass tab bar and round Log button. Album: glass back and bookmark/more controls float over the full-width cover; title, artist, spec line, aux-worthy mark, then Log, listen later and loved.

FORM: Grounded candidate 6 of 7 (record-label house style), seed: ad59b694a8b9141a. Signature move: the spec line with series colour marks, and the track bars (your track ratings as bars, everyone's average as a tick).

FINISH: unreviewed and undocumented is unfinished; this build ends with the finish review, the verdict, DESIGN.md, and every shipping raster carrying its provenance

## Unresolved

- Exact Sleeve tone extraction and per-album contrast guard (algorithm decided in the screen ticket that implements it).
- Share cards are Milestone 2; their templates are specified now and built later.
