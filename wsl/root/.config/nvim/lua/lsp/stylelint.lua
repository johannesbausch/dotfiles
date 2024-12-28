local lspconfig = require "lspconfig"
local lsp = lspconfig["stylelint_lsp"]
local lsp_settings = require "general/lsp"

lsp.setup({
  on_attach = lsp_settings.on_attach,
  capabilities = lsp_settings.capabilities
})
