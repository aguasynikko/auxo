# Retro: #2 Design directions and DESIGN.md

## What went well

- Showing the three directions as one page that scrolls on a phone made the choice easy to make on the device it's for. The phones scroll for real, so the collapsing title and the shrinking tab bar could be judged, not imagined.
- Building the chosen direction as a reference page before writing DESIGN.md meant the spec describes something that exists. The token tables come from working CSS.
- A separate review pass caught real gaps: the signature track bars were below the fold in every capture, the album page had two listen later buttons, and two share cards were mostly empty.
- Outlining the wordmark from the font means the brand SVGs render the same everywhere, with no font dependency.

## What hurt

- Two decisions arrived mid-session (themes in Settings, then the web app layout) and each reshaped the reference. Asking "will this also ship as a web app on desktop?" in the first question round would have saved a rebuild.
- The reference page is assembled from parts of the directions page. Running Prettier on the source broke the assembly's string matching. A plain build step with its own source files would have been sturdier.
- Screenshots of a horizontal scroll row cropped phones and got rejected as evidence. Wide captures need the row unwrapped first.
- The design tool's direction service wasn't reachable from the container, so the round ran without its outside challengers.

## What to change

- Ask about every surface a ticket must cover (phone, iPad, desktop web) in the first round of questions.
- Screen tickets check every screen in all three themes and both modes. Build a token-only theme switch into the first screen ticket so this is cheap.
- Keep design mocks as small, separate source files under `docs/design/` rather than one generated page, if they're going to be edited again.
- Before the first screen ticket, replace the placeholder `--auxo-*` tokens with DESIGN.md's tokens in one change, and build `<Glass>` and `/glass-lab` against the Glass spec.
