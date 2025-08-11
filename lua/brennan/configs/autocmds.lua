vim.api.nvim_create_autocmd("FileType", {
  pattern = { "help", "man" },
  callback = function()
    local buf = vim.api.nvim_get_current_buf()
    vim.cmd("tabnew")
    vim.api.nvim_set_current_buf(buf)
  end,
})

vim.api.nvim_create_autocmd("TermOpen", {
  callback = function()
    local buf = vim.api.nvim_get_current_buf()
    vim.cmd("tabnew")
    vim.api.nvim_set_current_buf(buf)
  end,
})

