-- Enable format on save
lvim.format_on_save = true

-- Setup ESLint as a linter and formatter
local null_ls = require "lvim.lsp.null-ls"
local linters = null_ls.builtins.diagnostics
local formatters = null_ls.builtins.formatting

-- Check for .eslintrc.json file at the root of the project
local eslint_config_exists = vim.fn.filereadable(".eslintrc.json") == 1

if eslint_config_exists then
  -- Linting setup
  null_ls.setup {
    sources = {
      linters.eslint_d.with {
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
      },
      -- Formatting setup
      formatters.eslint_d.with {
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
      },
    },
  }
end

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
