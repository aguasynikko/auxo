---
name: auxo
description: A social music diary. An exact, quiet frame of type and numbers around every album cover.
colors:
  paper: "#f2f3f5"
  surface: "#ffffff"
  ink: "#0b0c0e"
  ink-2: "#4f535a"
  ink-3: "#6b6f77"
  rule: "rgba(11, 12, 14, 0.1)"
  ultramarine: "#2e3bff"
  on-ultramarine: "#ffffff"
  star: "#0b0c0e"
  star-empty: "rgba(11, 12, 14, 0.14)"
  placeholder: "#e3e5e9"
  placeholder-ink: "#8d929a"
  night: "#000000"
  night-surface: "#111316"
  night-ink: "#f3f4f6"
  night-ink-2: "#a8acb3"
  night-ink-3: "#8b9098"
  night-rule: "rgba(255, 255, 255, 0.11)"
  night-ultramarine: "#4553ff"
  night-ultramarine-text: "#8d96ff"
  night-placeholder: "#1a1c20"
  night-placeholder-ink: "#5d6169"
  series-album: "#2e3bff"
  series-ep: "#0f9d6e"
  series-single: "#e8a400"
  series-live: "#e5484d"
  series-compilation: "#8b5cf6"
  series-soundtrack: "#0ea5b7"
typography:
  display:
    fontFamily: "-apple-system, BlinkMacSystemFont, 'SF Pro Text', 'SF Pro Display', Inter, system-ui, sans-serif"
    fontSize: "44px"
    fontWeight: 800
    lineHeight: 0.9
    letterSpacing: "-0.04em"
  headline:
    fontFamily: "-apple-system, BlinkMacSystemFont, 'SF Pro Text', 'SF Pro Display', Inter, system-ui, sans-serif"
    fontSize: "30px"
    fontWeight: 800
    lineHeight: 1.05
    letterSpacing: "-0.035em"
  title:
    fontFamily: "-apple-system, BlinkMacSystemFont, 'SF Pro Text', 'SF Pro Display', Inter, system-ui, sans-serif"
    fontSize: "20px"
    fontWeight: 800
    lineHeight: 1.2
    letterSpacing: "-0.02em"
  body:
    fontFamily: "-apple-system, BlinkMacSystemFont, 'SF Pro Text', 'SF Pro Display', Inter, system-ui, sans-serif"
    fontSize: "17px"
    fontWeight: 400
    lineHeight: 1.3
  label:
    fontFamily: "-apple-system, BlinkMacSystemFont, 'SF Pro Text', 'SF Pro Display', Inter, system-ui, sans-serif"
    fontSize: "11px"
    fontWeight: 600
    letterSpacing: "0.06em"
    fontFeature: "tnum"
rounded:
  art: "4px"
  panel: "14px"
  btn: "14px"
  log: "16px"
  series: "2px"
  glass: "999px"
spacing:
  hairline: "4px"
  tight: "8px"
  gap: "12px"
  panel: "16px"
  gutter: "20px"
  section: "30px"
components:
  button-primary:
    backgroundColor: "{colors.ultramarine}"
    textColor: "{colors.on-ultramarine}"
    rounded: "{rounded.btn}"
    height: "50px"
  button-plain:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink}"
    rounded: "{rounded.btn}"
    height: "50px"
  log-block:
    backgroundColor: "{colors.ultramarine}"
    textColor: "{colors.on-ultramarine}"
    rounded: "{rounded.log}"
    padding: "16px 16px 16px 18px"
  panel:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink}"
    rounded: "{rounded.panel}"
    padding: "16px"
  tab-pill:
    rounded: "{rounded.glass}"
    height: "62px"
    padding: "4px"
  log-button:
    backgroundColor: "{colors.ultramarine}"
    textColor: "{colors.on-ultramarine}"
    rounded: "{rounded.glass}"
    size: "62px"
  glass-button:
    textColor: "{colors.ink}"
    rounded: "{rounded.glass}"
    size: "44px"
  sidebar:
    rounded: "24px"
    width: "264px"
    padding: "22px 14px 14px"
  series-mark:
    rounded: "{rounded.series}"
    size: "8px"
---

# Design System: auxo

The written spec for auxo's look. The reference build at [docs/design/reference.html](docs/design/reference.html) is what this file describes; when they disagree, fix one of them on purpose. The frontmatter holds the default theme's tokens (Catalogue). The full tables for every theme are under Colors.

The placeholder `--auxo-*` tokens in the Next.js scaffold's `src/app/globals.css` are replaced by these tokens in a later screen ticket.

## Overview

**Creative North Star: "The House Style"**

auxo dresses like a record label's house style: an exact, quiet frame of type and numbers that presents every cover the same way, so the artwork changes and the frame never does. Cool paper grey and ink, one ultramarine for actions and selection, heavy system sans with tight tracking, tabular numbers, and small uppercase spec lines. The covers carry all the colour; the frame stays still.

The frame borrows the iPhone's own grammar (large titles, floating glass bars, grouped panels, sheets) because auxo should feel like a first-party app on the phone it lives on. It refuses the streaming-store page (big tinted hero, carousels of carousels) and the rating-site table.

Catalogue is the default look. Sleeve and Standard are themes people pick in Settings (ADR [0009](docs/adr/0009-selectable-themes-catalogue-default.md)). A theme swaps tokens only: palette, star colour, glass tint, display face and corner radii. Layout, components and motion are shared, so a screen is designed and tested once and checked in all three themes, light and dark.

**Key Characteristics:**

- One frame for every cover: the artwork changes, the frame doesn't.
- Ink and paper with a single ultramarine for actions and selection.
- Spec lines: 11px uppercase, 0.06em tracking, tabular numbers, a series colour square.
- Ink stars in Catalogue, not gold.
- Floating glass for bars, controls and the sidebar only.
- Light and dark follow the system in every theme.

## Brand

The brand is the same in every theme. Don't recolour the wordmark or icon for Sleeve or Standard.

### Brand rules

- **The name is always lowercase: auxo.** Also at the start of a sentence, in titles, the web app manifest and the icon label.
- **Wordmark and icon files** live in [docs/design/brand/](docs/design/brand/). The SVGs are the sources; the PNGs are exported from them. Its [README](docs/design/brand/README.md) records how each file was made.
- **The wordmark** is "auxo" in heavy sans with tight tracking (-0.04em) and an ultramarine series square after the "o" (0.16em square, 0.06em gap, raised 0.62em). Ink `#0b0c0e` with `#2e3bff` on light grounds; `#f3f4f6` with `#4553ff` on dark.
- **The app icon** is the white wordmark and square on a full-bleed ultramarine field.
- **No Apple marks.** Never use Apple logos, trademarks, the Apple Music name or SF Symbols artwork. Every icon in auxo is an authored SVG on a 24px grid with one stroke weight (1.9px, round caps and joins).
- **System type through the platform stack.** SF is reached only through `-apple-system` / `system-ui`; Inter is the fallback on other platforms. Source Serif 4 is the web fallback for `ui-serif` in Sleeve.
- **Credits.** Pages that show catalogue data carry "Data from MusicBrainz and Deezer" in 12px `ink-3`.

### Copy voice

- Short labels may be lowercase in the auxo voice: "listen later", "november", "tracklist", "recent reviews", "top 3", "settings", "nothing on the aux yet".
- Longer text uses sentence case: "Log a listen, rate it, say why", "Light and dark follow your device's appearance in every theme."
- Use the [glossary](docs/GLOSSARY.md) terms everywhere: album, edition, track; log, diary entry, review, rating, listen later, loved, top 3, aux-worthy.
- UI copy is device-neutral ("your device", "the built-in apps"). "iPhone" only names the target platform in docs.

## Colors

Cool paper and ink with one saturated blue; colour otherwise comes from the artwork and the six series marks.

### Primary

- **Ultramarine** (`ultramarine`): the one action colour. The Log button, the "What's on the aux?" block, primary buttons, the selected tab's ink, links, your own bar in the histogram and the track curve, and the wordmark square. In dark mode the fill lifts to `night-ultramarine` and text-sized ultramarine uses `night-ultramarine-text` for contrast.

### Neutral

- **Cool Paper** (`paper`): the page ground in light mode.
- **Panel White** (`surface`): grouped panels, the diary month, the tracklist, plain buttons.
- **Ink** (`ink`), **Ink 2** (`ink-2`), **Ink 3** (`ink-3`): primary text; artists and secondary text; spec lines, dates, durations and track numbers.
- **Rule** (`rule`): 0.5px hairline separators inside panels, inset to the text column.
- **True Black** (`night`) and **Night Surface** (`night-surface`): the dark-mode ground and panels.
- **Placeholder** (`placeholder`, `placeholder-ink`): the no-artwork cover, a ground with a centred record mark (a ring and a dot at 38% of the cover). Every album without artwork gets it.

### Series colours

Each album type has a fixed colour, shown as an 8px square with a 2px radius at the start of the spec line. They are semantic and constant across themes and modes.

| Type        | Token                | Value     |
| ----------- | -------------------- | --------- |
| Album       | `series-album`       | `#2e3bff` |
| EP          | `series-ep`          | `#0f9d6e` |
| Single      | `series-single`      | `#e8a400` |
| Live        | `series-live`        | `#e5484d` |
| Compilation | `series-compilation` | `#8b5cf6` |
| Soundtrack  | `series-soundtrack`  | `#0ea5b7` |

### Theme tokens

Every component reads these CSS custom properties; a hard-coded colour, radius or face breaks the other themes. Light and dark follow `prefers-color-scheme` in every theme. The chosen theme is stored on the profile (`profiles.theme`, default `catalogue`) and mirrored to a cookie so the server renders the right tokens on first paint.

**Catalogue** (default)

| Token               | Light                            | Dark                            |
| ------------------- | -------------------------------- | ------------------------------- |
| `--bg`              | `#f2f3f5`                        | `#000000`                       |
| `--surface`         | `#ffffff`                        | `#111316`                       |
| `--ink`             | `#0b0c0e`                        | `#f3f4f6`                       |
| `--ink-2`           | `#4f535a`                        | `#a8acb3`                       |
| `--ink-3`           | `#6b6f77`                        | `#8b9098`                       |
| `--rule`            | `rgba(11, 12, 14, 0.1)`          | `rgba(255, 255, 255, 0.11)`     |
| `--accent`          | `#2e3bff`                        | `#4553ff`                       |
| `--accent-text`     | `#2e3bff`                        | `#8d96ff`                       |
| `--accent-ink`      | `#ffffff`                        | `#ffffff`                       |
| `--star`            | `#0b0c0e`                        | `#f3f4f6`                       |
| `--star-empty`      | `rgba(11, 12, 14, 0.14)`         | `rgba(255, 255, 255, 0.18)`     |
| `--hist`            | `rgba(11, 12, 14, 0.22)`         | `rgba(243, 244, 246, 0.22)`     |
| `--tick`            | `#0b0c0e`                        | `#f3f4f6`                       |
| `--glass-fill`      | `rgba(255, 255, 255, 0.5)`       | `rgba(30, 32, 38, 0.5)`         |
| `--glass-solid`     | `#ffffff`                        | `#1b1d22`                       |
| `--glass-rim`       | `rgba(255, 255, 255, 0.75)`      | `rgba(255, 255, 255, 0.14)`     |
| `--glass-spec`      | `rgba(255, 255, 255, 0.9)`       | `rgba(255, 255, 255, 0.2)`      |
| `--glass-shadow`    | `0 6px 22px rgba(0, 0, 0, 0.13)` | `0 6px 22px rgba(0, 0, 0, 0.5)` |
| `--tab-sel`         | `rgba(11, 12, 14, 0.07)`         | `rgba(255, 255, 255, 0.1)`      |
| `--tab-sel-ink`     | `#2e3bff`                        | `#8d96ff`                       |
| `--log-fill`        | `#2e3bff`                        | `#4553ff`                       |
| `--log-ink`         | `#ffffff`                        | `#ffffff`                       |
| `--placeholder-bg`  | `#e3e5e9`                        | `#1a1c20`                       |
| `--placeholder-ink` | `#8d929a`                        | `#5d6169`                       |

**Sleeve**

| Token               | Light                            | Dark                            |
| ------------------- | -------------------------------- | ------------------------------- |
| `--bg`              | `#f6f5f8`                        | `#0e0d13`                       |
| `--surface`         | `#ffffff`                        | `#1a1922`                       |
| `--ink`             | `#1c1930`                        | `#f4f0fa`                       |
| `--ink-2`           | `#57526d`                        | `#b7b1cc`                       |
| `--ink-3`           | `#6e6984`                        | `#9a94b0`                       |
| `--rule`            | `rgba(28, 25, 48, 0.1)`          | `rgba(255, 255, 255, 0.1)`      |
| `--accent`          | `#b4532f`                        | `#f2a27f`                       |
| `--accent-text`     | `#a54b2a`                        | `#f4ae8f`                       |
| `--accent-ink`      | `#ffffff`                        | `#26130b`                       |
| `--star`            | `#c45c35`                        | `#f4ae8f`                       |
| `--star-empty`      | `rgba(28, 25, 48, 0.14)`         | `rgba(255, 255, 255, 0.18)`     |
| `--hist`            | `rgba(180, 83, 47, 0.34)`        | `rgba(242, 162, 127, 0.34)`     |
| `--tick`            | `#1c1930`                        | `#f4f0fa`                       |
| `--glass-fill`      | `rgba(255, 255, 255, 0.42)`      | `rgba(40, 38, 64, 0.42)`        |
| `--glass-solid`     | `#ffffff`                        | `#24222f`                       |
| `--glass-rim`       | `rgba(255, 255, 255, 0.7)`       | `rgba(255, 255, 255, 0.14)`     |
| `--glass-spec`      | `rgba(255, 255, 255, 0.85)`      | `rgba(255, 255, 255, 0.2)`      |
| `--glass-shadow`    | `0 8px 26px rgba(0, 0, 0, 0.15)` | `0 8px 26px rgba(0, 0, 0, 0.5)` |
| `--tab-sel`         | `rgba(28, 25, 48, 0.07)`         | `rgba(255, 255, 255, 0.1)`      |
| `--tab-sel-ink`     | `#a54b2a`                        | `#f4ae8f`                       |
| `--log-fill`        | `rgba(180, 83, 47, 0.9)`         | `rgba(242, 162, 127, 0.9)`      |
| `--log-ink`         | `#ffffff`                        | `#26130b`                       |
| `--placeholder-bg`  | `#e6e3ec`                        | `#23212c`                       |
| `--placeholder-ink` | `#8b86a0`                        | `#625d78`                       |

**Standard**

The platform's own conventions, with one change: its blue is a shade darker than the stock system blue, so link text and white button labels reach 4.5:1.

| Token               | Light                            | Dark                            |
| ------------------- | -------------------------------- | ------------------------------- |
| `--bg`              | `#f2f2f7`                        | `#000000`                       |
| `--surface`         | `#ffffff`                        | `#1c1c1e`                       |
| `--ink`             | `#000000`                        | `#ffffff`                       |
| `--ink-2`           | `#6c6c70`                        | `#98989f`                       |
| `--ink-3`           | `#6c6c70`                        | `#98989f`                       |
| `--rule`            | `rgba(60, 60, 67, 0.29)`         | `rgba(84, 84, 88, 0.6)`         |
| `--accent`          | `#0066d6`                        | `#0a6cff`                       |
| `--accent-text`     | `#0066d6`                        | `#3d9bff`                       |
| `--accent-ink`      | `#ffffff`                        | `#ffffff`                       |
| `--star`            | `#ff9500`                        | `#ff9f0a`                       |
| `--star-empty`      | `rgba(60, 60, 67, 0.18)`         | `rgba(235, 235, 245, 0.18)`     |
| `--hist`            | `rgba(0, 0, 0, 0.2)`             | `rgba(255, 255, 255, 0.2)`      |
| `--tick`            | `#000000`                        | `#ffffff`                       |
| `--glass-fill`      | `rgba(255, 255, 255, 0.55)`      | `rgba(36, 36, 40, 0.5)`         |
| `--glass-solid`     | `#ffffff`                        | `#2c2c2e`                       |
| `--glass-rim`       | `rgba(255, 255, 255, 0.7)`       | `rgba(255, 255, 255, 0.13)`     |
| `--glass-spec`      | `rgba(255, 255, 255, 0.9)`       | `rgba(255, 255, 255, 0.18)`     |
| `--glass-shadow`    | `0 6px 22px rgba(0, 0, 0, 0.12)` | `0 6px 22px rgba(0, 0, 0, 0.5)` |
| `--tab-sel`         | `rgba(0, 0, 0, 0.06)`            | `rgba(255, 255, 255, 0.1)`      |
| `--tab-sel-ink`     | `#0066d6`                        | `#3d9bff`                       |
| `--log-fill`        | `rgba(0, 102, 214, 0.92)`        | `rgba(10, 108, 255, 0.92)`      |
| `--log-ink`         | `#ffffff`                        | `#ffffff`                       |
| `--placeholder-bg`  | `#e5e5ea`                        | `#2c2c2e`                       |
| `--placeholder-ink` | `#8e8e93`                        | `#636366`                       |

In Settings, each theme row shows a swatch and a one-line note: Catalogue "Ink and paper, ultramarine actions. The default."; Sleeve "Album pages take the colours of the artwork."; Standard "The system's own colours, like the built-in apps."

### Sleeve album tones

On the album page, Sleeve takes its ground and accent from the album's artwork. The page sets per-album `--sl-*` tokens, which replace the base tokens there: `--sl-bg`, `--sl-surface`, `--sl-ink`, `--sl-ink-2`, `--sl-ink-3`, `--sl-rule`, `--sl-accent`, `--sl-accent-text`, `--sl-accent-ink` and `--sl-glass`. `--star` and `--tab-sel-ink` take `--sl-accent-text`, `--hist` is `--sl-accent` at 34%, `--tick` is `--sl-ink`, `--glass-fill` is `--sl-glass`, and the Log button uses `--sl-accent` with `--sl-accent-ink`.

The extraction algorithm and the per-album contrast guard are decided in the ticket that builds Sleeve. Until then Sleeve album pages use the Sleeve base tokens. The tones in the reference build are hand-picked for one sample album.

### Named Rules

**The One Blue Rule.** Ultramarine marks what you can do and what is selected. It is never decoration, never a background wash, and never a second accent beside another.

**The Series Rule.** Series colours mean album type and nothing else. They don't change with the theme, and they only appear as the small square in a spec line.

**The Token Rule.** Every colour, radius and display face in a component comes from a theme token.

## Typography

**UI and display font (Catalogue, Standard):** the system sans, `-apple-system, BlinkMacSystemFont, "SF Pro Text", "SF Pro Display", Inter, system-ui, sans-serif`
**Display and reading font (Sleeve):** `ui-serif, "New York", "Source Serif 4", "Iowan Old Style", Georgia, serif`

**Character:** heavy, tightly tracked system sans for titles and big numbers, plain system text for everything else, and tabular numerals wherever numbers line up. Sleeve swaps only the display and reading voice to a serif.

Themes set four type tokens; everything else is shared:

| Token              | Catalogue   | Sleeve   | Standard    |
| ------------------ | ----------- | -------- | ----------- |
| `--font-display`   | system sans | serif    | system sans |
| `--display-weight` | 800         | 600      | 700         |
| `--display-track`  | -0.035em    | -0.015em | -0.01em     |
| `--font-read`      | system sans | serif    | system sans |

`--font-read` sets review bodies and diary excerpts. In Sleeve, review bodies go up from 15px to 17px.

### Type scale

Phone sizes; the wide layout notes follow.

- **Big number** (display face, display weight, 44px, line-height 0.9, -0.04em): the album's average rating.
- **Wordmark title** (800, 40px, line-height 1, -0.04em): Home's large title. Always the brand sans, in every theme.
- **Screen title** (display face and weight, 34px, line-height 1.1, `--display-track`): large titles such as "settings"; also wide-screen page titles.
- **Album title** (display face and weight, 30px, line-height 1.05, `--display-track`): 40px in the wide layout.
- **Your rating number** (display face and weight, 28px, -0.03em).
- **Section title** (display face and weight, 20px, line-height 1.2, -0.02em): "listen later", "november", "tracklist".
- **Log block title** (display face and weight, 19px, line-height 1.2, -0.01em).
- **Artist** (600, 19px, -0.01em, `--accent-text`): 21px in the wide layout.
- **Body** (400, 17px, line-height 1.3): the phone's base size, cells and buttons (buttons at 600).
- **List title** (600, 16px, -0.01em): diary entries and tracks. Shelf titles are 15px.
- **Review body** (400, 15px, line-height 1.45, `--font-read`). Diary excerpts are 14px, line-height 1.4, clamped to two lines.
- **Secondary** (13px, `--ink-2`): artist under a title, cell subtitles, group headers.
- **Spec line** (600, 11px, 0.06em, uppercase, tabular, `--ink-3`): type, year and genres. The diary weekday is 10px at 0.08em.
- **Day numeral** (700, 22px, -0.02em, tabular).
- **Tab label** (600, 10px, 0.01em).

### Named Rules

**The Tabular Rule.** Ratings, counts, dates, durations and track numbers use tabular numerals so they line up down a column.

**The Spec Line Rule.** Facts about a release (type, year, genres, relisten) go in an uppercase 11px spec line led by its series square, never in a sentence.

## Layout

One layout serves every theme. The phone is the first target: an installed web app on an iPhone, used one-handed.

### Spacing

- **Screen gutter:** 20px on the left and right of content; 16px for grouped settings panels and the bars.
- **Panel padding:** 16px; list rows use 12px by 14px. Rows are at least 44px tall.
- **Between panels:** 12px. Between items in a shelf: 12px. Between action buttons: 8px.
- **Section heads:** 30px above, 10px below (26px above in the wide layout).
- **Hairlines** are 0.5px `--rule`, inset to the text column (62px into a diary row, 50px into a track row).
- The scroll area leaves 54px at the top for the status bar and 132px at the bottom for the floating tab bar.

### Phone

- **Home:** the wordmark as the large title with the avatar; the full-width "What's on the aux?" log block; the listen later shelf of 132px covers with spec lines, scrolling sideways; the month's diary as one panel with day numerals.
- **Album page:** glass back and share or more controls float on the ground above the cover. The cover runs the full content width, with title, artist, spec line and the aux-worthy mark below, then Log, listen later and loved. Then your rating, everyone's average with the histogram, the edition, the track curve, the tracklist and reviews.
- **Large titles** collapse to a centred 17px inline title once the content scrolls past about 44px, and a scroll-edge fade (the ground colour with a light 4px blur) fades in under the top bar.
- **Tab bar:** a floating glass four-tab pill (Home, Search, Diary, Profile), 16px from the sides and 24px from the bottom, with a separate round glass Log button beside it. Scrolling down past about 120px minimises it to the current tab plus Log; scrolling up (or back near the top) restores it.

### Wide screens

From 1024px wide (iPad landscape, desktop web) a floating glass sidebar replaces the tab bar.

- **Sidebar:** 264px wide, 12px from the top, left and bottom edges, radius 24px. It holds the wordmark (32px), a "Log a listen" button, the four sections (with counts where useful, such as the diary total) and a user row at the foot. Content starts 312px from the left.
- **Home** goes to two columns: the log block and the diary (about 1.55 parts) beside listen later as a list (1 part), 28px apart.
- **Album page:** a sticky 360px left column with the cover, the actions and your rating, beside the details, 40px apart, up to 960px wide. Average and track curve sit side by side. A breadcrumb replaces the back button, with share and more as round 40px plain buttons (`--surface`, 20px icons) at its right end.

## Elevation & Depth

Depth comes from two things: grouped panels on a toned ground, and floating glass for navigation. Panels have no shadows. Only the hero cover carries a soft drop shadow (`0 24px 40px -24px rgba(0, 0, 0, 0.5)`), so it sits a little forward of the page.

### The Glass spec

Glass is for bars, controls and the sidebar only: the tab pill, the Log button, the floating back and action buttons, and the wide-screen sidebar.

**Base (Safari and WebKit, and every browser):** `backdrop-filter: blur(12px) saturate(180%)` over a `--glass-fill` tint, a 0.5px inset rim (`--glass-rim`), a 1px specular inset line along the top (`--glass-spec`), and a `--glass-shadow` drop shadow. This path must look finished on its own; iPhone Safari never gets more.

**Refraction (Chromium only, progressive enhancement):** an edge bezel lens. Each glass element gets its own SVG filter, applied with `backdrop-filter: url(#filter) blur(3px) saturate(180%)`. The displacement map is drawn on a canvas at the element's exact pixel size:

1. Treat the element as a rounded rectangle with radius `min(height / 2, border radius)`, and for each pixel find the signed distance to its edge and the outward normal.
2. The bezel is `min(18px, height / 2.4)` wide. Inside it the strength is a smoothstep, `t = max(0, 1 - distance / bezel)`, `m = t² (3 - 2t)`; flat in the middle, strongest at the rim.
3. Write the normal into the red and green channels around a neutral 128: `R = 128 - nx · m · 127`, `G = 128 - ny · m · 127`, `B = 128`.
4. Feed the map to `feImage` and `feDisplacementMap` (red for x, green for y) at a scale of `min(48, height × 0.7)`.

Cache maps by size, rebuild a filter only when the element's size changes (on resize and after the tab bar's transition ends), and skip any element over 200,000 px². Turn refraction on only when the browser reports a Chromium brand and the user hasn't asked for reduced transparency.

**Reduced transparency:** under `prefers-reduced-transparency: reduce`, glass is the solid `--glass-solid` with no backdrop filter.

### Named Rules

**The Clear Cover Rule.** Glass never sits on album artwork at rest. The album page's floating controls sit on the ground above the cover, and the cover starts below them. Content, artwork included, may scroll beneath the bars, as on any scrolling screen. auxo must not feel like frosted chrome over the artwork.

**The Finished Fallback Rule.** The blur-and-tint glass is the design. Refraction is a bonus for some browsers, never a fix for a fallback that looks unfinished.

## Shapes

Small, exact corners on artwork; softer corners on panels and controls; full capsules for glass.

### Radii

| Token       | Use                                      | Catalogue | Sleeve | Standard |
| ----------- | ---------------------------------------- | --------- | ------ | -------- |
| `--r-art`   | Covers                                   | 4px       | 12px   | 10px     |
| `--r-panel` | Panels, the diary month, settings groups | 14px      | 22px   | 12px     |
| `--r-btn`   | Buttons, the sidebar Log button          | 14px      | 25px   | 12px     |
| `--r-log`   | The "What's on the aux?" block           | 16px      | 24px   | 14px     |

Shared, theme-independent shapes: small list covers cap at `min(--r-art, 8px)`; glass buttons, the tab pill and the Log button are full capsules or circles; the selected tab is 27px inside the 31px pill; the sidebar is 24px; series squares are 2px; the aux-worthy badge is 6px; avatars are circles; histogram and curve bars have 2px top corners.

## Components

Components are shared by every theme and read only theme tokens.

### Buttons

- **Shape:** 50px tall, `--r-btn` corners, 17px semibold label, icon and label 8px apart.
- **Primary:** `--accent` fill, `--accent-ink` label. Used for Log.
- **Plain:** `--surface` fill, `--ink` icon. Icon-only plain buttons are 50px square (listen later, loved); when on, the icon fills and takes `--accent-text`.
- **Press:** scale to 0.96 over 0.18s.

### Log block

The full-width "What's on the aux?" button on Home. `--accent` fill, `--r-log` corners, a title in the display face at 19px, a 13px subtitle at 85% opacity, and a 40px plus tile on the right (`--accent-ink` at 18%, 12px radius). Press scales to 0.98.

### Navigation

- **Tab pill:** glass, 62px tall, 4px padding. Each tab is a 24px icon over a 10px label. The selected tab has a `--tab-sel` fill and `--tab-sel-ink` colour. Minimised it is 54px with only the current tab's icon.
- **Log button:** round glass, 62px (54px minimised), 26px plus at 2.4px stroke, `--log-fill` and `--log-ink`.
- **Floating controls:** 44px round glass buttons; paired controls share one 44px glass capsule.
- **Wide-screen page tools:** share and more on the album page are 40px round plain buttons, not glass, at the right of the breadcrumb.
- **Sidebar:** see Layout. The selected section uses `--tab-sel` and `--tab-sel-ink`; the Log button is 42px tall with `--accent`.

### Panels and lists

- **Panel:** `--surface`, `--r-panel`, 16px padding, no border, no shadow.
- **Diary row:** day numeral and weekday (38px), a 48px cover, title, artist, then stars and small 15px marks for relisten, review and loved. A review adds a two-line excerpt.
- **Shelf item:** 132px cover, 15px title, 13px artist, spec line.
- **Track row:** two-digit number, title, duration, and your rating as a star and number; an unrated track shows "Rate" in `--accent-text`.
- **Settings cell:** 17px label, optional 13px subtitle, chevron or check on the right; grouped in a panel with a 13px header above and a 13px footnote below.

### Ratings

- **Stars:** five authored SVG stars, `--star` fill over `--star-empty`, halves clipped at 50%. Rows use 13px stars with a 2px gap; your rating uses 26px with a 4px gap. Every star group has a label such as "4.5 out of 5 stars".
- **Average and histogram:** the big average number and count beside ten bars (half to five stars) in `--hist`, with your own rating's bar in `--accent`.
- **Track curve:** the signature chart. Your track ratings as `--accent` bars, everyone's average as a 2px `--tick` line across each bar, unrated tracks hatched in `--rule`, with a 12px legend: "you" (an `--accent` square), "everyone" (a 2px `--tick` line) and "not rated" (a hatched square).
- **Aux-worthy mark:** 11px uppercase bold label with a spark icon in `--accent-text` and a 1px inset outline in the same colour.

### Spec line

The signature device: an 8px series square, then type, year and genres in 11px uppercase, 0.06em tracking, tabular, `--ink-3`.

### Covers

Covers are square, `--r-art`, and never cropped or tinted. Missing artwork gets the placeholder: `--placeholder-bg` with the record mark in `--placeholder-ink`.

## Motion

Motion is short and physical, and stands in for haptics, which a web app doesn't have.

- **Easing:** `cubic-bezier(0.2, 0.8, 0.2, 1)` for every movement.
- **Press:** buttons scale to 0.96, the log block to 0.98, over 0.18s.
- **Tab bar minimise and restore:** pill width and height and the Log button's size over 0.45s; the other tabs fade over 0.25s.
- **Title collapse:** the inline title fades over 0.2s and rises 4px over 0.25s; the scroll-edge fade fades over 0.2s.
- **Thresholds:** the title collapses past 44px of scroll. The tab bar minimises when scrolling down by more than 6px past 120px, and restores when scrolling up by more than 6px or when back above 60px.
- **Imitated haptics (to be confirmed in the screen ticket):** a small bounce on the star when you set a rating (story 33) and on the bookmark when you add to listen later (story 57). These are intent only; the reference build shows press feedback, and the curves and durations are decided in the ticket that builds those screens.
- **Reduced motion:** under `prefers-reduced-motion: reduce`, the tab bar, Log button, inline title and scroll-edge fade change state instantly with no transition, and buttons and the log block don't scale on press.

## Share Cards

Milestone 2 templates, specified now and built later. Share cards always use the Catalogue look, in the sharer's light or dark mode, whatever theme they picked. Everything is laid out in container query units (`cqw`), so a card renders the same at preview size and at export size.

- **Review story** (1080 × 1920): wordmark and date on top, the cover at 74% width, title, artist, spec line (with RELISTEN when it was one), stars with the number, up to five lines of the review, and the reviewer's avatar and name at the foot. 7cqw padding.
- **Rating square** (1080 × 1080): wordmark and date on top; the cover (58%) beside title, artist and spec line; stars and a large rating number at the foot with the username. 6cqw padding.
- **Top 3 story** (1080 × 1920): wordmark and username on top, the "top 3" title, then three rows of a large position numeral in `--accent-text`, a cover, title, artist and spec line, with "on auxo" at the foot.

Type on cards uses the system sans at 800 for titles, tracked tight as in the app, with spec lines at 0.06em uppercase. Covers on cards have a 1.4cqw radius.

## Do's and Don'ts

### Do:

- **Do** take every colour, radius and display face from a theme token, and check each screen in all three themes, light and dark.
- **Do** keep ultramarine for actions and selection only.
- **Do** put release facts in a spec line with its series square.
- **Do** use tabular numerals for every rating, count, date and duration.
- **Do** make the blur-and-tint glass look finished before adding refraction.
- **Do** honour reduced motion and reduced transparency.
- **Do** give every album without artwork the placeholder cover.

### Don't:

- **Don't** put glass on album artwork.
- **Don't** use glass for panels, cards or content; it is for bars, controls and the sidebar.
- **Don't** change layout, components or motion per theme.
- **Don't** recolour the wordmark or icon for a theme, or capitalise auxo.
- **Don't** use Apple logos, trademarks, the Apple Music name or SF Symbols artwork.
- **Don't** use gold stars in Catalogue; its stars are ink.
- **Don't** use series colours for anything but album type.
