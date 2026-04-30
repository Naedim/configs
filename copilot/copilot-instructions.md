# Copilot Custom Instructions

## Dotfiles Repo Context

This repo (`~/work/configs`) is a **macOS dotfiles repo**. All configs are symlinked from here into their expected locations on the system:

| Config dir/file         | Symlink target                          |
|-------------------------|-----------------------------------------|
| `nvim/`                 | `~/.config/nvim`                        |
| `wezterm/wezterm.lua`   | `~/.config/wezterm/wezterm.lua`         |
| `zsh/zshrc`             | `~/.zshrc`                              |
| `zsh/zshrc.d/`          | `~/.zshrc.d`                            |
| `starship/starship.toml`| `~/.config/starship.toml`               |
| `sketchybar/`           | `~/.config/sketchybar`                  |
| `aerospace/`            | `~/.config/aerospace`                   |
| `yazi/`                 | `~/.config/yazi`                        |
| `copilot/copilot-instructions.md` | `~/.copilot/copilot-instructions.md` |
| `copilot/mcp.json`      | `~/.copilot/mcp.json`                   |
| `copilot/mcp-config.json` | `~/.copilot/mcp-config.json`          |

The machine is a **MacBook** running macOS. Tool binaries are installed via Homebrew (prefix: `/opt/homebrew`).

### After every config change

After adding or updating any configuration in this repo, always check:

1. **`README.md`** (repo root) — does it list the tool? Are the purpose, docs link, and `ln -s` quick-use command accurate?
2. **Tool-specific `README.md`** (e.g. `copilot/README.md`) — does it reflect the current files and setup steps?
3. **Symlink table above** — if a new config dir/file was added, update the table in this file too.

## SonarCloud Integration

You have access to a SonarCloud MCP server via the `sonarcloud` tool. Use it proactively when working on code quality tasks.

This project uses the **SonarCloud AI Quality Gate**. All AI-generated code you produce must pass the AI Quality Gate before it can be considered complete. Treat a failing AI Quality Gate as a blocking issue.

### When to use SonarCloud

- Before suggesting fixes for bugs or code smells, **fetch the SonarCloud analysis** for the relevant file or component to understand existing issues.
- When asked to "fix issues", "clean up code", or "improve quality", query SonarCloud first to get the full picture.
- When reviewing a PR or diff, cross-reference any changed files against open SonarCloud issues.
- After writing or modifying code, **always check the AI Quality Gate status** for the affected project/branch.

### Workflow

1. **Retrieve issues**: Use the SonarCloud MCP to list issues for the project/component being worked on.
2. **Check AI Quality Gate**: Query the quality gate status for the current branch or PR. If the AI Quality Gate is `ERROR` or `WARN`, resolve those issues before proceeding.
3. **Prioritize**: Address `BLOCKER` and `CRITICAL` severity issues first, then `MAJOR`. AI Quality Gate failures always take top priority regardless of severity label.
4. **Fix and verify**: Make the necessary code changes, then confirm the issue category (bug, vulnerability, code smell, AI-flagged issue) is resolved in context.
5. **Report**: After changes, summarize which SonarCloud issues were addressed, their severities, and the final AI Quality Gate status (`OK` / `ERROR`).

### Environment variables required

| Variable           | Description                                      |
|--------------------|--------------------------------------------------|
| `SONARCLOUD_TOKEN` | SonarCloud user token (generate at sonarcloud.io/account/security) |
| `SONARCLOUD_ORG`   | Your SonarCloud organization key                 |
