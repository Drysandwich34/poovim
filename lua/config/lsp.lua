vim.diagnostic.config({
  virtual_text = {
    severity = { min = vim.diagnostic.severity.WARN },
    spacing = 4,
    prefix = '●',
    format = function(diagnostic)
      return diagnostic.message:gsub("\n", "  ")
    end,
  },
  update_in_insert = false,
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
  end,
})

