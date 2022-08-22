local pluginConfs = require "custom.plugins.configs"

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme = "gruvchad",
  transparency = false,
}

M.plugins = {
  user = require 'custom.plugins',

  override = {
    ["nvim-treesiter/nvim-treesiter"] = pluginConfs.treesiter,
    ["williamboman/mason.nvim"] = pluginConfs.mason,
  }
}

M.mappings = require 'custom.mappings'

return M
