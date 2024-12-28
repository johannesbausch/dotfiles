local wezterm = require "wezterm"
local utils = require "utils"
local colors = require "colors"
local mappings = require "mappings"
local settings = require "settings"
local typography = require "typography"
local shells = require "shells"
require "listeners"

-- Build the initial wezterm configuration object
local config = wezterm.config_builder()

--[[
  Combine configurations from multiple modules into the config.
  Shallowly copy settings from colors, mappings, settings, typography, and shells into the config.
--]]
utils.shallowCopyAndAssign(config, colors, mappings, settings, typography, shells)

return config
