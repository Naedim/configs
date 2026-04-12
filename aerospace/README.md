# AeroSpace — motions & keybindings summary

This directory contains configuration for AeroSpace (macOS window manager). Place a copy of this file at ~/.aerospace.toml to customize behavior. Below is a concise summary of the motions and keybindings provided by the current config.

Principles

- Default layout: "accordion" with automatic orientation per monitor.
- Gaps are currently set to 0; containers can be tiled or accordion.
- Some workspaces are persistent and some are assigned to specific monitors (see workspace-to-monitor-force-assignment).
- Mouse follows focus when monitor focus changes (moves to monitor center).

Primary motion keys (Alt modifier = ⌥)

- Window focus
  - Alt + h: focus left (within workspace boundaries)
  - Alt + l: focus right
- Move window between containers
  - Alt + Shift + h: move window left (and set h_accordion layout)
  - Alt + Shift + l: move window right (and set h_accordion layout)

Workspace navigation

- Alt + j: previous workspace (wrap-around)
- Alt + k: next workspace (wrap-around)
- Alt + Shift + j: move focused window to previous workspace, then switch to it
- Alt + Shift + k: move focused window to next workspace, then switch to it

Resizing

- Alt + - : smart resize -50
- Alt + = : smart resize +50

Monitor focus & moving windows between monitors

- Alt + u / i / o : focus monitor 1 / 2 / 3
- Alt + Shift + u / i / o : move focused window to monitor 1 / 2 / 3 and focus that monitor

Binding modes

- Alt + Shift + ; : enter "service" mode
  - In service mode:
    - Esc : reload config and return to main mode
    - r   : reset/flatten workspace layout and return to main mode
    - f   : toggle between floating and tiling layout and return to main mode

Notes

- Install AeroSpace and put a copy of this config at ~/.aerospace.toml (the file includes more options and comments).
- Docs and commands: <https://nikitabobko.github.io/AeroSpace/>
- The config also notifies sketchybar on workspace changes and can run commands after startup (see after-startup-command).

If any of these key choices should be changed or you want an expanded cheatsheet, say which keys to prefer and a short persona for the layout (e.g., "vim-style" or "macOS friendly").
