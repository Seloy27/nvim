
vim.opt.termguicolors = true

require('nvim-highlight-colors').setup({
    render = "virtual"
})

vim.keymap.set("n", "<A-g>c", function()
    require('nvim-highlight-colors').toggle()
end)
