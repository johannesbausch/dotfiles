-- Bridges Mason and LSPconfig for seamless LSP installation
local options = {
  ensure_installed = {
    "ts_ls",
    "angularls",
    "svelte",
    "bashls",
    "clangd",
    "cssls",
    "tailwindcss",
    "emmet_language_server",
    "html",
    "jsonls",
    "eslint",
    "lua_ls",
    "rust_analyzer",
    "marksman",
    "pyright",
    "jdtls",
    "vuels",
    "groovyls",
    "stylelint_lsp"
  }
}

return {
  "williamboman/mason-lspconfig.nvim",
  opts = options
}
