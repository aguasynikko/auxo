# auxo brand files

The SVGs are the sources. Edit those and re-export the PNGs; never edit a PNG by hand.

| File                                   | What it is                                                                                            |
| -------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `wordmark.svg`                         | Wordmark for light grounds: ink `#0b0c0e` with the ultramarine `#2e3bff` series square                |
| `wordmark-dark.svg`                    | Wordmark for dark grounds: `#f3f4f6` with `#4553ff`                                                   |
| `wordmark-mono.svg`                    | One-colour wordmark in `currentColor`, for embossing, favicons and single-ink use                     |
| `app-icon.svg`                         | App icon source, 1024 × 1024, full bleed with no rounding (the platform masks it)                     |
| `app-icon-maskable.svg`                | Maskable icon: the same art scaled to 56 % around the centre, so it stays inside the 80 % safe circle |
| `app-icon-180.png`                     | Apple touch icon, exported from `app-icon.svg`                                                        |
| `app-icon-192.png`, `app-icon-512.png` | Manifest `any` icons, exported from `app-icon.svg`                                                    |
| `app-icon-maskable-512.png`            | Manifest `maskable` icon, exported from `app-icon-maskable.svg`                                       |

## How the files were made

- The wordmark letters are outlines of "auxo" from Inter ExtraBold (SIL Open Font License), drawn at -0.04 em tracking with fontTools. They're outlines, so the SVGs don't depend on an installed font. The square is 0.16 em, placed 0.06 em after the "o" and raised 0.62 em.
- The PNGs were rendered from the SVGs in headless Chromium at exactly their pixel size (180, 192 and 512), at device scale 1.

The brand is the same in every theme. Don't recolour the icon or wordmark for Sleeve or Standard.
