local lspconfig = require "lspconfig"
local lsp = lspconfig["jdtls"]
local lsp_settings = require "general/lsp"

lsp.setup({
  on_attach = lsp_settings.on_attach,
  capabilities = lsp_settings.capabilities
})
