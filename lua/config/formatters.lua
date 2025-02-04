-- Enable format on save
lvim.format_on_save = true

-- Setup ESLint as a linter
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    command = "eslint_d",
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  },
}

-- Setup Prettier as a formatter (fixes code on save)
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "prettierd",
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "css", "scss", "html", "json", "yaml", "markdown" },
    -- Optional: specify any arguments if needed
    -- args = { "--config", "path/to/your/.prettierrc" },
  },
}
