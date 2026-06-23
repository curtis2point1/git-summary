# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build & Run Commands

```bash
go build ./cmd/git-summary           # Build binary
go run ./cmd/git-summary             # Run directly
goreleaser release --clean         # Multi-platform release (CI uses this)
./scripts/install.sh               # Universal installer script
```

**No Makefile or test suite** — CI builds via GoReleaser on `v*` tags.

## Architecture

**Entry point**: `cmd/git-summary/main.go` — CLI with 6 commands: default TUI, `scan`, `scan-all`, `init`, `issue`, `help`

**Package structure** (`internal/`):
- `tui/` — Bubbletea TUI (model.go=state, update.go=events, view.go=render, styles.go=lipgloss)
- `scan/` — Concurrent recursive repo discovery with ignore patterns
- `gitstatus/` — Git CLI calls for branch/staged/unstaged/untracked counts
- `config/` — YAML config at `~/.config/git-summary/config.yml`
- `cache/` — 5-min file cache at `~/.cache/git-summary/cache.json`
- `stats/` — Analytics panels (contributions, timeline, diskusage)
- `workspace/` — Hot-switch scan directories at runtime
- `model/` — Repo/RepoStatus structs

**TUI State Machine**: `StateLoading` → `StateReady` → `StateSearching` / `StateWorkspaceSwitch` / `StateError`

**Data flow**: Config → Scan (concurrent) → Cache → Model (filter/sort/paginate) → View

## Key Dependencies

- Charmbracelet stack: bubbletea (TUI framework), bubbles (components), lipgloss (styles)
- Go 1.20+, zero CGO, portable binaries
