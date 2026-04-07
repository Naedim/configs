# Copilot Configuration

## Files

### `copilot-instructions.md`
Custom instructions for GitHub Copilot. Defines behavior, workflows, and integrations (e.g. SonarCloud).
Symlinked to `~/.copilot/` or placed in `.github/` at the repo level.

### `mcp.json`
MCP servers that run **locally as a process** (stdio transport).
Copilot spawns them via `npx`, `uvx`, etc.
Symlinked to `~/.copilot/mcp.json`.

### `mcp-config.json`
MCP servers accessed **remotely over HTTP** (no local process).
Symlinked to `~/.copilot/mcp-config.json`.

## Setup

Both `mcp.json` and `mcp-config.json` reference environment variables for sensitive values.
These must be defined locally in `~/.zshrc.secrets` (not committed):

```bash
export SONARCLOUD_TOKEN="your-token"
export SONARCLOUD_ORG="your-org-key"
```

## Symlinks

All config files are symlinked from this repo to `~/.copilot/` for global use across all projects.
Repo-level `.github/copilot-instructions.md` instructions are **additive** — they stack on top of these global ones.

```bash
DOTFILES_COPILOT="path/to/your/dotfiles/copilot"

ln -sf "$DOTFILES_COPILOT/copilot-instructions.md" ~/.copilot/copilot-instructions.md
ln -sf "$DOTFILES_COPILOT/mcp.json" ~/.copilot/mcp.json
ln -sf "$DOTFILES_COPILOT/mcp-config.json" ~/.copilot/mcp-config.json
```
