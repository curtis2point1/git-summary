# MEMORY.md

Project memory for git-scope development.

## Project Status

- Forked from `Bharath-code/git-scope` (2026-01-27)
- Personal fork: `curtis2point1/git-scope`
- Open PRs (#13, #14) left open for upstream if they want the fixes

## Git Remotes

- `origin` → `github.com:curtis2point1/git-scope.git` (personal fork)
- `upstream` → `github.com:Bharath-code/git-scope.git` (original)

## Completed Changes (merged to main)

- **Configurable pageSize**: Add `pageSize` option to config.yml
- **Fetch shortcut (F)**: Run `git fetch` on selected repo
- **Ahead/Behind columns**: Display ↑/↓ sync status in table
- **Rescan fix**: Force fresh scan on `r`, fetch, and editor close (bypass cache)

## Future Enhancements

- [ ] Change fetch shortcut from `F` to `u` (update)
- [ ] Add "fetch all" command (`U`) to fetch every repo
- [ ] Add option for applying custom themes
