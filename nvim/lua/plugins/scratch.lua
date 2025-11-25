return {
  {
    "LintaoAmons/scratch.nvim", -- The plugin repository
    event = "VeryLazy",

    -- Define the keymaps inside the 'keys' table
    keys = {
      -- The recommended keymaps translated into the 'keys' table format
      -- 1. Toggle Scratchpad
      { "<M-C-n>", "<cmd>Scratch<cr>", mode = "n", desc = "Toggle Floating Scratchpad" },
      -- 2. Open/Focus Scratchpad
      { "<M-C-o>", "<cmd>ScratchOpen<cr>", mode = "n", desc = "Open/Focus Scratchpad" },

      -- Optional: A reliable Leader-based backup key is often useful
      { "<leader>fs", "<cmd>Scratch<cr>", mode = "n", desc = "Toggle Scratchpad (Leader)" },
    },

    -- Optional: Use the 'opts' table for any configuration options
    opts = {},
  },
}
