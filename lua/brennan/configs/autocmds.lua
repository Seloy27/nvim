
function dim()

    vim.api.nvim_create_autocmd('BufEnter', {
        pattern = "*",
        callback = function ()
            Snacks.dim.disable()
        end
    })

    vim.api.nvim_create_autocmd('BufEnter', {

        pattern = "*.html",
        callback = function ()

            Snacks.dim.enable()
        end
    })
end
