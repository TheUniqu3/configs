--[[
  ███████╗ ██████╗ ███╗   ██╗████████╗███████╗
  ██╔════╝██╔═══██╗████╗  ██║╚══██╔══╝██╔════╝
  █████╗  ██║   ██║██╔██╗ ██║   ██║   ███████╗
  ██╔══╝  ██║   ██║██║╚██╗██║   ██║   ╚════██║
  ██║     ╚██████╔╝██║ ╚████║   ██║   ███████║
  ╚═╝      ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚══════╝
--]]
local w = require('wezterm')
local M = {}
M.font = w.font_with_fallback({
  "JetBrains Mono",
  { family = "Symbols Nerd Font Mono", scale = 0.75 }
})
M.use_cap_height_to_scale_fallback_fonts = true
M.font_size = 14.0

return M
