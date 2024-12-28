local wezterm = require "wezterm"

local M = {}

M.font = wezterm.font "FiraCode Nerd Font" -- Use the "FiraCode Nerd Font" for text
M.font_size = 12.0 -- Set the font size to 12
M.harfbuzz_features = { -- Customize how the font behaves
	"calt=0", -- Turn off automatic font changes based on the context (like switching letters)
	"clig=0", -- Turn off some special letter combinations (ligatures) that usually look fancy
	"liga=0", -- Turn off standard font ligatures (common letter pairs like "fi" turning into a single symbol)
	"zero" -- Make sure numbers (like 1, 0) are clear and easy to read
}

return M

