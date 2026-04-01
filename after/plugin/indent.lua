
local hooks = require "ibl.hooks"
local rainbow = {
    "Pine",
    "Love",
    "Gold",
    "Rose",
    "Iris",
}

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "Highlight_Med", { fg = "#403d52" })
    vim.api.nvim_set_hl(0, "Pine", { fg = "#31748f" })
    vim.api.nvim_set_hl(0, "Gold", { fg = "#f6c177" })
    vim.api.nvim_set_hl(0, "Love", { fg = "#eb6f92" })
    vim.api.nvim_set_hl(0, "Iris", { fg = "#c4a7e7" })
    vim.api.nvim_set_hl(0, "Rose", { fg = "#ebbcba" })
end)

local LeftAlignedSolid1 = "▏"
local LeftAlignedSolid2 = "▎"

require("ibl").setup({
    scope = {
        enabled = false,
        show_start = false,
        show_end = false,
        show_exact_scope = true,
        char = LeftAlignedSolid2,
        injected_languages = true,
        highlight = "IblWhitespace",
        priority = 500,
        include = { node_type = { ["*"] = { "*" } } },
    },

    whitespace = {
        highlight = "IblWhitespace",
        remove_blankline_trail = true
    },

    indent = {
        char = LeftAlignedSolid1,
        smart_indent_cap = true,
        highlight = "Highlight_Med",
    },
})

vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
