-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
   -- theme = "github_dark_dimmed",

  tabufline = {
    enabled = true,
    lazyload = true,
    order = {"buffers", "tabs", "btns"}
  },

  nvdash = {
    load_on_startup = true,
  }

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

return M
