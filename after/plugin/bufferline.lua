
local   bufferline = require("bufferline")
local   map = vim.keymap.set

local   function Init()
bufferline.setup({
    options = {

        tab_size = 1,
        show_buffer_icons = false,
        max_name_length = 1,
        truncate_names = false,
        style_preset = bufferline.style_preset.no_italic,
        enforece_regular_tabs = true,
        always_show_bufferline = false,
        numbers = "ordinal",

        offsets = {
            {
                filetype  = "NvimTree",
                text      = "NvimTree",
                highlight = "Directory",
                separator = true
            }
        },

        hover = {
            enabled = true,
            delay   = 50,
            reveal  = { "close" }
        }
    }
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

map("n", "<CA-Left>", function() vim.cmd("BufferLineMovePrev") end)
map("n", "<CA-Right>", function() vim.cmd("BufferLineMoveNext") end)
end
Init()

