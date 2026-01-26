
require("zen-mode").setup({
    window = {
        width = .85
    }
})

vim.keymap.set("n", "<leader>z", function()
    vim.cmd("ZenMode")
end)
