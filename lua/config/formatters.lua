-- Enable format on save
lvim.format_on_save = true

-- Linters
local linters = require "lvim.lsp.null-ls.linters"
-- Formatters
local formatters = require "lvim.lsp.null-ls.formatters"

linters.setup {
  {
    command = "eslint_d",
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  },
}

-- Setup Prettier as a formatter (js/ts)
formatters.setup {
  {
    command = "eslint_d",
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "css", "scss", "html", "json", "yaml", "markdown" },
    -- Optional: specify any arguments if needed
    -- args = { "--config", "path/to/your/.prettierrc" },
  },
}

-- Setup Black as a formatter (python)
formatters.setup {
  -- Other formatters...
  {
    command = "black",
    filetypes = { "python" },
    -- Black reads from stdin with the "-" argument.
    args = { "--quiet", "-" },
  },
}
