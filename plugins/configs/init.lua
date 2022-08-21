local M = {}

M.treesiter = {
  ensure_installed = {
    "lua"
  }
}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "stylua"
  }
}

return M
