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

Both MCP config files are symlinked from this repo to `~/.copilot/`:

```bash
ln -sf ~/work/configs/copilot/mcp.json ~/.copilot/mcp.json
ln -sf ~/work/configs/copilot/mcp-config.json ~/.copilot/mcp-config.json
```
