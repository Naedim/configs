return {
    "folke/snacks.nvim",
    opts = {
        indent = { animate = { enabled = false } },
        dim = { animate = { enabled = false } },
        scroll = {
            animate = {
                easing = "outCubic",
                duration = { step = 5, total = 300 },
            },
        },
        picker = {
            -- Include hidden (dot) files and gitignored files in all pickers
            hidden = true,
            ignored = true,
            sources = {
                files = {
                    hidden = true,
                    ignored = true,
                },
                grep = {
                    hidden = true,
                    ignored = true,
                },
                lsp_symbols = {
                    layout = {
                        layout = {
                            box = "vertical",
                            width = 0.4,
                            min_width = 60,
                            height = 0.8,
                            border = true,
                            title = "{title} {live} {flags}",
                            { win = "input", height = 1, border = "bottom" },
                            { win = "list", border = "none" },
                        },
                    },
                },
                lsp_workspace_symbols = {
                    layout = {
                        layout = {
                            box = "vertical",
                            width = 0.4,
                            min_width = 60,
                            height = 0.8,
                            border = true,
                            title = "{title} {live} {flags}",
                            { win = "input", height = 1, border = "bottom" },
                            { win = "list", border = "none" },
                        },
                    },
                },
            },
            explorer = {
                hidden = true,
                ignored = true,
                layout = { layout = { position = "right" } },
            },
        },
    },
}
