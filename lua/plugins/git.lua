return {
  -- blamer
  {
    "APZelos/blamer.nvim",
    event = "VeryLazy",
    config = function()
      vim.g.blamer_enabled = 1 -- Enable Blamer
      vim.g.blamer_show_in_insert_modes = 0 -- Don't show in insert mode
      vim.g.blamer_delay = 500 -- Delay (ms) before showing blame
      vim.g.blamer_relative_time = 1 -- Show relative time (e.g., "2 days ago")
      vim.g.blamer_date_format = "%d-%m-%Y" -- Custom date format if relative_time is 0
      vim.g.blamer_prefix = "  " -- Custom prefix for blame text
      vim.g.blamer_template = "<author> • <summary> • <date>" -- Template for blame text
      vim.g.blamer_highlight = "Comment" -- Highlight group for blame text
    end,
  },
}

