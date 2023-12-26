--[[
  ██╗    ██╗███████╗███████╗████████╗███████╗██████╗ ███╗   ███╗
  ██║    ██║██╔════╝╚══███╔╝╚══██╔══╝██╔════╝██╔══██╗████╗ ████║
  ██║ █╗ ██║█████╗    ███╔╝    ██║   █████╗  ██████╔╝██╔████╔██║
  ██║███╗██║██╔══╝   ███╔╝     ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║
  ╚███╔███╔╝███████╗███████╗   ██║   ███████╗██║  ██║██║ ╚═╝ ██║
   ╚══╝╚══╝ ╚══════╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝
--]]


local merge = require('utils.utils').merge
local mappings = require("mappings")
local mtt = require('domains.mtt')
local fonts = require('fonts')
local gui = require('gui')
local shell = require('shell')
-- local background = require('background')

local config = merge(mappings, mtt, fonts, gui, shell)

require("setups.right-status").setup()
require("setups.left-status").setup()
require("setups.notify").setup()
require("setups.tab-title").setup()
-- workspace setup
local wezterm = require("wezterm")
local workspace_switcher = wezterm.plugin.require("https://github.com/MLFlexer/smart_workspace_switcher.wezterm")

workspace_switcher.apply_to_config(config)

return config
