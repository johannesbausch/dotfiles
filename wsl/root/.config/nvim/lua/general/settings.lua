-- Disable showing the title in the terminal window.
vim.o.title = false

-- Set the number of spaces a tab counts for.
vim.o.tabstop = 2

-- Set the number of spaces to use for each step of (auto)indent.
vim.o.shiftwidth = 2

-- Use spaces instead of tabs.
vim.o.expandtab = true

-- Set the number of spaces for a <Tab> press while editing.
vim.o.softtabstop = 2

-- Enable line numbers on the left-hand side.
vim.o.number = true

-- Do not display invisible characters like tabs or trailing spaces.
vim.o.list = false

-- Enable 24-bit RGB color support.
vim.o.termguicolors = true

-- Set the cursor shape and style (block, vertical bar, etc.).
vim.o.guicursor = "a:ver25-Cursor"

-- Highlight the line where the cursor is located.
vim.o.cursorline = true

-- Set the default shell to Fish shell.
vim.o.shell = "fish"

-- New horizontal splits appear below the current window.
vim.o.splitbelow = true

-- New vertical splits appear to the right of the current window.
vim.o.splitright = true

-- Display the last entered command in the command line.
vim.o.showcmd = true

-- Set the height of the command line to 1 row.
vim.o.cmdheight = 1

-- Show a single status line for the entire Vim instance.
vim.o.laststatus = 3

-- Set the default character encoding to UTF-8.
vim.o.encoding = "utf-8"

-- Set the file encoding to UTF-8.
vim.o.fileencoding = "utf-8"

-- Replace empty lines with a tilde character (~).
vim.o.fillchars = "eob:~"

-- Do not display relative line numbers; only absolute line numbers.
vim.o.relativenumber = false

-- Always show the sign column (e.g., for diagnostics or git changes).
vim.o.signcolumn = "yes:1"

-- Set completion options for the popup menu.
vim.o.completeopt = "menu,menuone,noselect"

-- Disable mouse support.
vim.o.mouse = ""

-- Set file formats to use Unix-style line endings.
vim.o.fileformats = "unix"

-- Use the system clipboard for copy and paste operations.
vim.o.clipboard = "unnamedplus"

-- Configure diagnostics (e.g., error and warning messages).
vim.diagnostic.config({
  -- Do not show inline error messages in the code.
  virtual_text = false,

  -- Update diagnostics while in insert mode.
  update_in_insert = true,

  -- Sort diagnostics by severity (e.g., error > warning > info).
  severity_sort = true,

  -- Show diagnostic messages in a floating window.
  float = true
})

