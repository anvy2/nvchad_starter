local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    python = { "ruff_fix", "ruff_organize_imports", "ruff_format" },
    go = { "goimports", "gofmt" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    sql = { "sqlfmt" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
