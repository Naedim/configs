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

App launchers

- Alt + w: open a new WezTerm window on the focused monitor
- Alt + g: open a new Google Chrome window

Notes

- Install AeroSpace and place this config at `~/.aerospace.toml`.
- Docs and commands: <https://nikitabobko.github.io/AeroSpace/>
- The config notifies sketchybar on workspace changes and can run commands after startup.

---

## macOS requirements

**Privacy & Security → Accessibility**: enable AeroSpace

**Desktop & Dock**:
- Displays have separate Spaces → **Off** (AeroSpace cannot reliably move windows between monitors when enabled; needs logout to apply)
- Automatically rearrange Spaces based on most recent use → **Off**
- Stage Manager → **Off**

**Keyboard → Keyboard Shortcuts**:
- Mission Control: ensure no `⌥` shortcuts clash with `⌥ j/k/h/l/u/i/o`
- Input Sources: ensure "select previous/next input source" does not use `⌥`

**Side effects**: all `⌥`-bound keys lose their special character (⌥g → ©, ⌥w → ∑, ⌥h → ˙, ⌥j → ∆, ⌥k → ˚, ⌥l → ¬)

**⌘H**: `automatically-unhide-macos-hidden-apps = false` — hidden apps stay hidden
