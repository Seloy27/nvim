
local autocmd = vim.api.nvim_create_autocmd

local function au()
vim.api.nvim_create_autocmd(
    "UIEnter",
    {
        pattern = "*",
        once = true,
        callback = function()
            if vim.bo.filetype == "netrw" then
                vim.defer_fn(function()
                    for i = 1, 9 do
                        require("harpoon.ui").nav_file(i)
                    end
                    vim.cmd("Ex")
                    vim.cmd("bd 1") -- only if netrw
                    -- require("harpoon.ui").nav_file(1)
                end, 100)
            end
        end
    }
)
end
au()

