# A PWA instead of a native app for v1

v1 ships as a mobile-first Next.js web app that installs to the iPhone home screen as a PWA (name and short name "auxo"), not as a native iOS app. One codebase serves phone, iPad and desktop, needs no App Store review, and gives public, server-rendered pages with link previews for free.

## Consequences
- The iPhone installed PWA is the main target, so Safari/WebKit limits drive the design: Liquid Glass refraction (SVG filters in `backdrop-filter`) is Chromium-only progressive enhancement, and the Safari fallback must look finished.
- No real haptics or push notifications in v1; micro-interactions imitate haptics with motion.
- Sign in with Apple runs through the web OAuth flow.
