
-- disable netrw at the very start of your init.lua

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
local   status = false
local   bufferline = require("bufferline")
local   map = vim.keymap.set

local   function Init()
require("nvim-tree").setup({
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 30,
    },
    filters = {
        dotfiles = true,
    },
    disable_netrw = true,
    hijack_cursor = true,
    sync_root_with_cwd = true,
    update_focused_file = {
        enable = true,
        update_root = false,
    },
    renderer = {
        root_folder_label = false,
        highlight_git = true,
        indent_markers = { enable = true },
        icons = {
            glyphs = {
                default = "󰈚",
                folder = {
                    default = "",
                    empty = "",
                    empty_open = "",
                    open = "",
                    symlink = "",
                },
                git = { unmerged = "" },
            },
        },
    },
})

map("n", "<A-1>", function() vim.cmd("BufferLineGoToBuffer 1") end)
map("n", "<A-2>", function() vim.cmd("BufferLineGoToBuffer 2") end)
map("n", "<A-3>", function() vim.cmd("BufferLineGoToBuffer 3") end)
map("n", "<A-4>", function() vim.cmd("BufferLineGoToBuffer 4") end)
map("n", "<A-5>", function() vim.cmd("BufferLineGoToBuffer 5") end)
map("n", "<A-6>", function() vim.cmd("BufferLineGoToBuffer 6") end)
map("n", "<A-7>", function() vim.cmd("BufferLineGoToBuffer 7") end)
map("n", "<A-8>", function() vim.cmd("BufferLineGoToBuffer 8") end)
map("n", "<A-9>", function() vim.cmd("BufferLineGoToBuffer 9") end)

map("n", "<CA-h>", function() vim.cmd("BufferLineMovePrev") end)
map("n", "<CA-l>", function() vim.cmd("BufferLineMoveNext") end)
map("n", "<C-h>", function() vim.cmd("BufferLineCyclePrev") end)
map("n", "<C-l>", function() vim.cmd("BufferLineCycleNext") end)

bufferline.setup({
    options = {

        style_preset = bufferline.style_preset.no_italic,

        offsets = {
            {
                filetype = "NvimTree",
                text = "NvimTree",
                highlight = "Directory",
                separator = true
            }
        }
    }
})
status = true
end
Init()

vim.keymap.set("n", "<leader>e", function()
    if status then
    vim.cmd("NvimTreeFocus")
    else
    vim.cmd("Ex")
    end
end)

