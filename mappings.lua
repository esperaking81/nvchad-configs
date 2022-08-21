local M = {}

M.general = {
  i = {
    ["jk"] = { "<ESC>", "Exit insert mode when typing jk fast"}
  },

  n = {
    -- switch between windows
    ["<S-h>"] = { "<C-w>h", "window left" },
    ["<S-l>"] = { "<C-w>l", "window right" },
    ["<S-j>"] = { "<C-w>j", "window down" },
    ["<S-k>"] = { "<C-w>k", "window up" },
  }
}

return M
