local M = {}

M.general = {
  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },

  n = {
    [";"] = { ":", "enter cmdline", opts = { nowait = true } },
    -- Split windows
    ["ss"] = { ":split<Return><C-w>w", opts = { silent = true } },
    ["sv"] = { ":vsplit<Return><C-w>w", opts = { silent = true } },
    -- Move between windows
    ["sh"] = { "<C-w>h", opts = { silent = true } },
    ["sj"] = { "<C-w>j", opts = { silent = true } },
    ["sk"] = { "<C-w>k", opts = { silent = true } },
    ["sl"] = { "<C-w>l", opts = { silent = true } },
  },
}

M.telescope = {
  plugin = true,

  n = {
    ["<leader>ft"] = { "<CMD>Telescope flutter commands<CR>", "show flutter commands" },
    ["<leader>td"] = { "<cmd>Telescope diagnostics <CR>", "show diagnostics" },
  },
}

M.lspconfig = {
  plugin = true,

  n = {
    ["<leader>lf"] = {
      function()
        vim.lsp.buf.formatting_seq_sync()
      end,
      "ﱓ  lsp formatting",
    },
  },
}

return M
