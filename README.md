# Reps Homebrew tap

Reps MCP is the Mac companion for the Reps iPhone app. It lets Claude
Desktop, Claude Code and Codex on your Mac read the health summaries you
choose to share from Reps: readiness, energy, sleep, heart rate, workouts,
nutrition, water and caffeine.

## Privacy, in plain English

- Your health data goes from your iPhone straight to the Mac you paired, over
  your local network, encrypted. It never goes to Reps servers.
- You pick which categories to share, and you can remove any of them at any
  time in Reps on your iPhone.
- The companion keeps what it receives in memory only.
- Questions you ask your assistant, and its answers, follow that assistant's
  own data terms.

## Install

```bash
brew install sidbmw/reps/reps-mcp
```

Then connect your assistant. Each command is safe to run again:

```bash
reps-mcp install-claude-desktop   # Claude Desktop
reps-mcp install-claude           # Claude Code
reps-mcp install-codex            # Codex
```

Open <http://127.0.0.1:8787> on your Mac and pair from Reps on your iPhone
(Settings, Desktop AI (Mac)). Reps Pro is required for pairing.

## What your assistant can ask

| Tool | What it answers |
|---|---|
| `reps_today` | Readiness, energy, last night's sleep and one next step |
| `reps_status` | What is shared, how fresh it is, how to fix gaps |
| `reps_sleep` | Last night's sleep story, or time asleep on an earlier day |
| `reps_energy` | Today's energy dips and rises and what drove them |
| `reps_readiness` | Readiness with its inputs, HRV and resting heart rate |
| `reps_metric_history` | Day-by-day history of one metric over 7–90 days |
| `reps_usual_by_now` | Today so far against your usual by this time |
| `reps_workouts` | Recent workouts |
| `reps_nutrition` | Calories, macros, water and caffeine |

## Upgrade

```bash
brew update && brew upgrade reps-mcp
```

## Remove

```bash
reps-mcp uninstall
brew uninstall reps-mcp
```

`reps-mcp uninstall` removes the Claude Desktop, Claude Code and Codex
registrations and every local pairing record.

## What is in this repository

Only the Homebrew formula and this README. The `reps-mcp` program itself is
a signed, notarized universal macOS binary attached to this repository's
releases. The MIT license in `LICENSE` covers the formula and README in this
repository only.
