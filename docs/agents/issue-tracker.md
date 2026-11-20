# Issue tracker

Tickets live in **GitHub Issues** on `aguasynikko/auxo`.

## How to access

- Preferred: the GitHub MCP tools (`mcp__github__issue_read`, `issue_write`, `list_issues`, `sub_issue_write`).
- `gh` CLI works only if `gh auth status` passes. If it fails, run `gh auth login` or use the MCP tools.
- Fallback if GitHub is unreachable: one Markdown file per ticket in `docs/tickets/<number>-<slug>.md`, using the same template below. Sync to GitHub once access returns.

## Ticket template

```
## What
One-paragraph description of the vertical slice.

## Acceptance criteria
- [ ] ...

## Blocked by
- #N (or "None")

## Spec
Link to the relevant section of docs/SPEC.md
```

## Conventions

- One ticket = one session = one branch `ticket/<number>-<slug>`.
- PRs close their issue with `Closes #N`.
- Dependencies are written in "Blocked by"; parent/child via sub-issues.
