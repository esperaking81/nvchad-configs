return {
  ["goolord/alpha-nvim"] = {
    disable = false,
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["akinsho/flutter-tools.nvim"] = {
    after = "nvim-lspconfig",
    config = function ()
      require 'custom.plugins.fluttertools'
    end
  },
}