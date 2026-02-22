
local hooks = require "ibl.hooks"
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
    vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
    vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
    vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
    vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
end)
RGB = {
    "RainbowRed",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowOrange",
    "RainbowGreen",
    "RainbowViolet",
    "RainbowCyan"
}

function Indent( indent , char , tab )

    indent = indent or "IblIndent"
    char = char or "│"
    tab = tab or 4

    require("ibl").setup({
        scope = {
            enabled = false,
            show_start = false,
            show_end = false,
            injected_languages = true,
            highlight = { "Function", "Label" },
            priority = 500,
            include = { node_type = { ["*"] = { "*" } } },
        },

        whitespace = {
            remove_blankline_trail = false
        },

        indent = {
            char = char,
            -- char = "»",
            smart_indent_cap = true,
            highlight = indent,
        },
    })

    vim.opt.tabstop = tab
    vim.opt.softtabstop = tab
    vim.opt.shiftwidth = tab
end
Indent()

