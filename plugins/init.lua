local M = {}

M.plugins = {
  ["Pocco81/TrueZen.nvim"] = {
    config = function()
      require "custom.plugins.truezen"
    end,
  },

  ["goolord/alpha-nvim"] = {
    disable = true,
  },

  ["folke/which-key.nvim"] = {
    disable = true,
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["akinsho/flutter-tools.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.fluttertools"
    end,
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
}

return M
