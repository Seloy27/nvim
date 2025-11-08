
vim.api.nvim_create_autocmd('BufEnter', {
  pattern = "*",
  callback = function ()
    Snacks.indent.disable()
  end
})

vim.api.nvim_create_autocmd('BufEnter', {

  pattern = "*.html",
  callback = function ()

    Snacks.indent.enable()
  end
})

