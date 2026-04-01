
require('gitsigns').setup {

}

vim.keymap.set("n", "<A-g>s", function()
    vim.cmd("Gitsigns toggle_signs")
end)
