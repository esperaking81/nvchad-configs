local M = {}

M.general = {
  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = {nowait = true}}
  },

  n = {
    [";"] = { ":", "enter cmdline", opts = { nowait = true } },
  },
}

M.telescope = {
  plugin = true,

  n = {
    ["<leader>ft"] = { "<CMD>Telescope flutter commands<CR>", "show flutter commands" },
    ["<leader>td"] = { "<cmd> Telescope diagnostics <CR>", "show diagnostics" },
  }
}

return M
