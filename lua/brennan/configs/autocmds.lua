
vim.api.nvim_create_autocmd(
    'BufEnter',
    {
        pattern = "*",
        callback = function()
            if (vim.bo.buftype == "" and vim.bo.filetype == "html") then
                Snacks.dim.enable()
            else
                Snacks.dim.disable()
            end
        end
    }
)

