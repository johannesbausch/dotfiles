-- Auto-completion in LSP.
local cmp_lsp = require "cmp_nvim_lsp"

-- This function runs when LSP starts and sets up key shortcuts for using LSP features.
local on_attach = function(client, bufnr)
  -- Options to make the shortcuts work without extra output or side effects.
  local options = { noremap = true, silent = true }

  -- Shortcut to set key bindings for the current file.
  local keymap = vim.api.nvim_buf_set_keymap

  -- Key shortcuts for LSP features.
  keymap(bufnr, "v", "<leader>la", "<cmd>lua vim.lsp.buf.range_code_action()<CR>", options)  -- Actions on selected code.
  keymap(bufnr, "n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<CR>", options)  -- Rename something (Refactor).
  keymap(bufnr, "n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<CR>", options) -- Fix or improve code.
  keymap(bufnr, "n", "<leader>le", "<cmd>lua vim.diagnostic.open_float()<CR>", options) -- Show an error message.
  keymap(bufnr, "n", "<leader>lx", "<cmd>lua vim.diagnostic.setloclist()<CR>", options) -- List all errors.
  keymap(bufnr, "n", "<leader>lf", "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", options) -- Format the code (Reformat) and organize imports.
end

-- Set up features for auto-completion in LSP.
local capabilities = cmp_lsp.default_capabilities()

return {
  on_attach = on_attach,
  capabilities = capabilities
}

