# Copilot Configuration

## Files

### `copilot-instructions.md`
Custom instructions for GitHub Copilot. Defines behavior, workflows, integrations such as SonarCloud, and Caveman brevity mode.
Can be symlinked to `~/.copilot/` or placed in `.github/` at the repo level.

### `mcp.json`
MCP servers that run **locally as a process** (stdio transport).
Copilot starts them via `npx`, `uvx`, and similar tools.
Symlink target: `~/.copilot/mcp.json`.

### `mcp-config.json`
MCP servers accessed **remotely over HTTP** (no local process).
Symlink target: `~/.copilot/mcp-config.json`.

Includes remote servers such as Atlassian and Stripe.

## Setup

`mcp.json` and `mcp-config.json` reference environment variables for sensitive values.
Define them locally in `~/.zshrc.secrets` and do not commit them:

```bash
export SONARCLOUD_TOKEN="your-token"
export SONARCLOUD_ORG="your-org-key"
```

Stripe MCP uses OAuth in Copilot, so no local Stripe secret key belongs in this repo.

## Symlinks

All config files can be symlinked from this repo to `~/.copilot/` for global use across projects.
Repo-level `.github/copilot-instructions.md` instructions are **additive** — they stack on top of these global ones.

```bash
DOTFILES_COPILOT="path/to/your/dotfiles/copilot"

ln -sf "$DOTFILES_COPILOT/copilot-instructions.md" ~/.copilot/copilot-instructions.md
ln -sf "$DOTFILES_COPILOT/mcp.json" ~/.copilot/mcp.json
ln -sf "$DOTFILES_COPILOT/mcp-config.json" ~/.copilot/mcp-config.json
```

The global instructions now make Caveman mode the default, so Copilot replies and commit messages stay terse without needing `/caveman` while keeping technical detail.
