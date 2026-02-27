
local autocmd = vim.api.nvim_create_autocmd

local function au()
autocmd(
    "UIEnter",
    {
        pattern = "*",
        once = true,
        callback = function()
            if vim.bo.filetype == "netrw" then
                vim.defer_fn(function()
                    for i = 1, 50 do
                        require("harpoon.ui").nav_file(i)
                    end
                    vim.cmd("Ex")
                    vim.cmd("bd 1") -- only if netrw
                    -- require("harpoon.ui").nav_file(1)
                end, 1)
            end
        end
    }
)

autocmd(
    "BufEnter",
    {
        pattern = "*.html",
        callback = function ()
            vim.opt.wrap = false
        end
    }
)
autocmd(
    "BufLeave",
    {
        pattern = "*.html",
        callback = function ()
            vim.opt.wrap = true
        end
    }
)
end
au()

