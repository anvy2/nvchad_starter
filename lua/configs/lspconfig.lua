-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
-- EXAMPLE
local nvlsp = require "nvchad.configs.lspconfig"

-- local servers = { "html", "cssls", "clangd", "ruff", "basedpyright", "gopls" }
-- lsps with default config
-- for _, lsp in ipairs(servers) do
--   lspconfig[lsp].setup {
--     on_attach = nvlsp.on_attach,
--     on_init = nvlsp.on_init,
--     capabilities = nvlsp.capabilities,
  -- }
-- end

local servers = {
  html = {},
  cssls = {},
  clangd = {},
  ruff = {},
  basedpyright = {},
  gopls = {},
  sqlls = {}
}
for name, opts in pairs(servers) do
  opts.on_attach = nvlsp.on_attach
  opts.on_init = nvlsp.on_init
  opts.capabilities = nvlsp.capabilities
  lspconfig[name].setup(opts)
end
-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
