# AeroSpace — motions & keybindings summary

Summary of the current AeroSpace config and its main keybindings.

Principles

- Default layout: `accordion` with automatic orientation per monitor.
- Gaps are set to 0; containers can be tiled or accordion.
- Some workspaces are persistent and some are assigned to specific monitors.
- Mouse follows monitor focus.

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

- Install AeroSpace and place this config at `~/.aerospace.toml`.
- Docs and commands: <https://nikitabobko.github.io/AeroSpace/>
- The config notifies sketchybar on workspace changes and can run commands after startup.
