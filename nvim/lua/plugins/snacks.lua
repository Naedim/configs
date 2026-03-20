return {
  "folke/snacks.nvim",
  opts = {
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
