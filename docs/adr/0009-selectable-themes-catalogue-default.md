# Selectable themes, with Catalogue as the default

The design session (issue #2) mocked three directions: Catalogue, Sleeve and Standard. Catalogue is auxo's default look, and users can switch to Sleeve or Standard in Settings. A theme is a set of tokens: colours, star colour, glass tint, display face and corner radii. Every theme shares Catalogue's layout, components and motion, so a screen is designed and tested once. Sleeve adds one behaviour: the album page takes its ground and accent from the album's artwork. Light and dark follow the system in every theme.

The choice is stored on the profile (`profiles.theme`, default `catalogue`, written through `updateProfile`) so it follows the user across devices. It is mirrored to a cookie so the server renders the right tokens on the first paint, with no flash.

The brand doesn't change with the theme: the wordmark, app icon and share cards always use Catalogue.

## Considered options

- **One look only.** Simplest, but the owner wanted the alternatives available.
- **Themes that change layout too.** Each direction had its own Home and album layouts in the mocks. Carrying three layouts would triple the work and the test surface for every screen ticket, so themes are tokens only.
- **Device-local setting (localStorage).** No schema change, but the theme would reset on every new device, and the server couldn't render it without a flash.

## Consequences

- Every colour, radius and display-face value in components must come from a token; a hard-coded value breaks the other themes.
- Sleeve needs a per-album tone and a contrast guard. Where the tones are sampled and stored is decided in the ticket that builds Sleeve; until then Sleeve album pages fall back to the Sleeve base tokens.
- Screen tickets check their screens in all three themes, light and dark.
