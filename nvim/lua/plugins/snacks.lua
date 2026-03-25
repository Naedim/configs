return {
    "folke/snacks.nvim",
    opts = {
        indent = { animate = { enabled = false } },
        dim = { animate = { enabled = false } },
        scroll = {
            animate = {
                easing = "linear",
                duration = { step = 15, total = 100 },
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
            },
            explorer = {
                hidden = true,
                ignored = true,
            },
        },
    },
}
