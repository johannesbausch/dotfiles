-- Set the "leader" key, which is a prefix key for custom shortcuts, to a space (" ").
vim.g.mapleader = " "
-- Set the "local leader" key (used in certain local contexts) to a space (" ").
vim.g.maplocalleader = " "

-- Create a shorthand for setting keymaps (keyboard shortcuts) in Neovim.
local keymap = vim.api.nvim_set_keymap
-- Define options for keymaps:
-- "noremap" ensures that each part of a keymap must be pressed individually, and it prevents one keymap from automatically triggering another.
-- "silent" means no message will be shown when the shortcut is used.
local options = {
  noremap = true,
  silent = true
}

-- === General ===
-- Open the "Mason" plugin window. (Plugin to manage LSP)
keymap("n", "<leader>M", "<cmd>Mason<CR>", options)
-- Open the "Lazy" plugin manager.
keymap("n", "<leader>L", "<cmd>Lazy<CR>", options)
-- Show LSP (Language Server Protocol) info.
keymap("n", "<leader>I", "<cmd>LspInfo<CR>", options)

-- === Buffer Management ===
-- A "buffer" (in NeoVim) is an open file.
-- Quit the current buffer.
keymap("n", "<leader>bq", "<cmd>bd<CR>", options)
-- Switch to the next buffer.
keymap("n", "<leader>bn<Right>", "<cmd>bn<CR>", options)
-- Switch to the previous buffer.
keymap("n", "<leader>bp<Left>", "<cmd>bp<CR>", options)
-- Save the current buffer.
keymap("n", "<leader>bs", "<cmd>w<CR>", options)
-- Quit Neovim.
keymap("n", "<leader>q", "<cmd>q<CR>", options)

-- === Window Management ===
-- Adjust vertical split sizes:
keymap("n", "<leader>w<Right>", "<cmd>vert res -10<CR>", options)
keymap("n", "<leader>w<Left>", "<cmd>vert res +10<CR>", options)
-- Adjust horizontal split sizes:
keymap("n", "<leader>w<Up>", "<cmd>res +5<CR>", options)
keymap("n", "<leader>w<Down>", "<cmd>res -5<CR>", options)
-- Same functionality for "hljk" as arrow keys.
keymap("n", "<leader>wl", "<cmd>vert res -10<CR>", options)
keymap("n", "<leader>wh", "<cmd>vert res +10<CR>", options)
keymap("n", "<leader>wk", "<cmd>res +5<CR>", options)
keymap("n", "<leader>wj", "<cmd>res -5<CR>", options)

-- === Neotree File Explorer ===
-- Open Neotree.
keymap("n", "<leader>E", "<cmd>Neotree<CR>", options)
-- Open Neotree to view buffers.
keymap("n", "<leader>eb", "<cmd>Neotree buffers<CR>", options)
-- Focus on Neotree.
keymap("n", "<leader>ef", "<cmd>Neotree focus<CR>", options)
-- Quit Neotree.
keymap("n", "<leader>eq", "<cmd>Neotree close<CR>", options)
-- View git status in Neotree.
keymap("n", "<leader>eg", "<cmd>Neotree git_status<CR>", options)
-- Focus Neotree on the current file.
keymap("n", "<leader>ec", "<cmd>Neotree current<CR>", options)
-- Move Neotree position.
keymap("n", "<leader>e<Up>", "<cmd>Neotree top<CR>", options)
keymap("n", "<leader>e<Right>", "<cmd>Neotree right<CR>", options)
keymap("n", "<leader>e<Down>", "<cmd>Neotree bottom<CR>", options)
keymap("n", "<leader>e<Left>", "<cmd>Neotree left<CR>", options)

-- === Diffview for Git ===
-- Open a side-by-side Git diff view.
keymap("n", "<leader>do", "<cmd>DiffviewOpen<CR>", options)
-- Quit the Diffview window.
keymap("n", "<leader>dq", "<cmd>DiffviewClose<CR>", options)
-- Focus on the file panel in Diffview.
keymap("n", "<leader>df", "<cmd>DiffviewFocusFiles<CR>", options)
-- View Git file history.
keymap("n", "<leader>dh", "<cmd>DiffviewFileHistory<CR>", options)
-- Toggle files panel in Diffview.
keymap("n", "<leader>dt", "<cmd>DiffviewToggleFiles<CR>", options)
-- Refresh the Diffview.
keymap("n", "<leader>dr", "<cmd>DiffviewRefresh<CR>", options)

-- === Gitsigns (Git integration) ===
-- Show blame for the current line.
keymap("n", "<leader>gb", "<cmd>Gitsigns blame_line<CR>", options)
-- Toggle line blame display.
keymap("n", "<leader>gt", "<cmd>Gitsigns toggle_current_line_blame<CR>", options)
-- Preview a change (hunk) inline or as a popup window (see what changes are made in the current hunk).
keymap("n", "<leader>gh", "<cmd>Gitsigns preview_hunk_inline<CR>", options)
keymap("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", options)
-- Show the difference with the current branch/file.
keymap("n", "<leader>gd", "<cmd>Gitsigns diffthis<CR>", options)

-- === Telescope (Fuzzy Finder) ===
-- Open Telescope's main menu.
keymap("n", "<leader>T", "<cmd>Telescope<CR>", options)
-- Quickly find files.
keymap("n", "<leader>tf", "<cmd>Telescope find_files<CR>", options)
-- Quickly find Git-tracked files.
keymap("n", "<leader>tg", "<cmd>Telescope git_files<CR>", options)
-- Search for a string under the cursor or globally.
keymap("n", "<leader>ts", "<cmd>Telescope grep_string<CR>", options)
-- Search something in the entire project
keymap("n", "<leader>tp", "<cmd>Telescope live_grep<CR>", options)
-- Manage buffers.
keymap("n", "<leader>tb", "<cmd>Telescope buffers<CR>", options)
-- View recently used files.
keymap("n", "<leader>tu", "<cmd>Telescope oldfiles<CR>", options)
-- Explore available commands.
keymap("n", "<leader>tc", "<cmd>Telescope commands<CR>", options)
-- Explore command history.
keymap("n", "<leader>th", "<cmd>Telescope command_history<CR>", options)
-- Explore errors.
keymap("n", "<leader>tq", "<cmd>Telescope quickfix<CR>", options)
-- Explore errors of the current file.
keymap("n", "<leader>tl", "<cmd>Telescope loclist<CR>", options)

-- Telescope with LSP integration:
-- Find references. (All locations where a function/variable is used)
keymap("n", "<leader>tr", "<cmd>Telescope lsp_references<CR>", options)
-- Find incoming calls. (Show which function calls the current one)
keymap("n", "<leader>tz", "<cmd>Telescope lsp_incoming_calls<CR>", options)
-- Find outgoing calls. (Show which functions are called by the current one)
keymap("n", "<leader>to", "<cmd>Telescope lsp_outgoing_calls<CR>", options)
-- Explore document symbols. (List all functions/variables of current file)
keymap("n", "<leader>tw", "<cmd>Telescope lsp_document_symbols<CR>", options)
-- Explore diagnostics. (List all LSP errors)
keymap("n", "<leader>te", "<cmd>Telescope diagnostics<CR>", options)
-- Jump to LSP definitions. (Go to where a function/variable is defined)
keymap("n", "<leader>td", "<cmd>Telescope lsp_definitions<CR>", options)
-- Jump to LSP implementations. (Go to where a function/variable is implemented)
keymap("n", "<leader>ti", "<cmd>Telescope lsp_implementations<CR>", options)
-- Jump to LSP type definitions. (Go to where a type is defined)
keymap("n", "<leader>tt", "<cmd>Telescope lsp_type_definitions<CR>", options)

