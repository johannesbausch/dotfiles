local lspconfig = require "lspconfig"
local lsp = lspconfig["svelte"]
local lsp_settings = require "general/lsp"

lsp.setup({
  on_attach = lsp_settings.on_attach,
  capabilities = lsp_settings.capabilities
})