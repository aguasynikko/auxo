# Product

<!-- impeccable:product-schema 1 -->

## Platform

web

A mobile-first Next.js PWA. The iPhone home-screen install is the main target (ADR 0005); iPad and desktop get a sidebar layout. Mobile web is still `web`: the app borrows Apple's design language but is not a native app.

## Users

Album obsessives: people who already rate and review albums on other sites and want somewhere that feels better on a phone. They open auxo daily, usually right after or during a listen, to rate, log and write a few lines. Everyday listeners and friend groups come later (Milestone 2 social).

## Product Purpose

auxo is a social music diary, Letterboxd for albums. People search any album, rate it in half stars, rate its tracks inline, log a listen with a date, optional review and tags, keep a listen later list, and build a diary grouped by month and a profile with their top 3 and stats. Milestone 1 is the single-player core loop (search, album, rate, log, diary, profile) done well enough that people come back daily. Success is a daily habit of logging.

## Positioning

Existing music-rating sites feel like databases; streaming apps remember plays but not opinions. auxo is the one that feels like a first-party iPhone app, with the album artwork as the hero and rating as a physical, satisfying act.

## Operating Context

- Used one-handed on an iPhone, often with music playing, in short sessions; installed to the home screen and launched standalone.
- Home in Milestone 1 is personal: recently logged albums, listen later, recent diary entries and a nudge to log. The friends' activity feed arrives in Milestone 2.
- Data comes from MusicBrainz, Cover Art Archive and Deezer, credited in the app.

## Capabilities and Constraints

- Vocabulary follows docs/GLOSSARY.md (album, edition, track; log, diary entry, review, rating, listen later, loved, top 3, aux-worthy).
- Ratings are 0.5–5 in half steps. Loved (heart) is separate from rating. Aux-worthy badge: average ≥ 4.0 from ≥ 10 ratings.
- Tab bar: Home, Search, Log +, Diary, Profile. Sidebar on wide screens.
- Liquid Glass refraction is Chromium-only progressive enhancement; the Safari/WebKit fallback must look finished. No real haptics; motion imitates them.
- Light and dark follow the system; reduced motion and reduced transparency are honoured.
- Albums with no artwork need an intentional placeholder cover.

## Brand Commitments

- The name is always lowercase **auxo**, including at the start of a sentence, in titles, the manifest and the icon label.
- Short UI labels may be lowercase in the auxo voice ("nothing on the aux yet"); longer text uses sentence case.
- Apple's design language (SF-style system type, Liquid Glass bars, sheets, large titles) is the pinned frame. No Apple logos, trademarks or the Apple Music name anywhere.
- Must not feel like: a streaming-app clone, a database, frosted chrome burying the artwork, or a gamified toy.

## Evidence on Hand

- No real users, reviews or ratings yet. Mock content (albums, ratings, diary entries) is illustrative sample data.
- No logo or icon exists before the design session (issue #2).

## Product Principles

1. The artwork is the hero; chrome stays out of its way.
2. Rating and logging are one step away and feel physical.
3. Opinions over plays: the diary is the user's own record, written in their words.
4. Quiet and lasting over loud and gamified.
5. Native-feeling on iPhone first, honest on every other browser.

## Accessibility & Inclusion

Keyboard access with visible focus, screen-reader labels on star controls ("4.5 out of 5 stars"), Dynamic-Type-style scaling, reduced motion and reduced transparency respected.
