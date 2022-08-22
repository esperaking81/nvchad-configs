local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
  return
end

local b = null_ls.builtins

local my_sources = {
  b.formatting.dart_format,
  b.formatting.stylua,
}

local augroup_format = vim.api.nvim_create_augroup("Format", { clear = true })

local on_attach = function(client, bufnr)
  if client.resolved_capabilities.document_formatting then
    vim.api.nvim_clear_autocmds { buffer = 0, group = augroup_format }
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup_format,
      buffer = 0,
      callback = function()
        vim.lsp.buf.formatting_seq_sync()
      end,
    })
  end
end

null_ls.setup {
  debug = true,
  sources = my_sources,
  on_attach = on_attach,
}
