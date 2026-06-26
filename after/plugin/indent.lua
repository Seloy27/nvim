
local hooks = require "ibl.hooks"
local rainbow = {
    "Pine",
    "Love",
    "Gold",
    "Rose",
    "Iris",
}

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "Muted", { fg = "#6e6a86" })
    vim.api.nvim_set_hl(0, "Highlight_Med", { fg = "#403d52" })
    vim.api.nvim_set_hl(0, "Highlight_Low", { fg = "#524f67" })
    vim.api.nvim_set_hl(0, "Pine", { fg = "#31748f" })
    vim.api.nvim_set_hl(0, "Gold", { fg = "#f6c177" })
    vim.api.nvim_set_hl(0, "Love", { fg = "#eb6f92" })
    vim.api.nvim_set_hl(0, "Iris", { fg = "#c4a7e7" })
    vim.api.nvim_set_hl(0, "Rose", { fg = "#ebbcba" })
end)

local LeftAlignedSolid1 = "▏"
local LeftAlignedSolid2 = "▎"
local GlobalNode = {
    "return_statement", "table_constructor", "class_body", "enum_body",
    "switch_case", "switch_body", "switch_default", "statement_block"
}
local Cnode = { "compound_statement" }

require("ibl").setup({
    scope = {
        enabled = false,
        show_start = true,
        show_end = true,
        show_exact_scope = false,
        char = LeftAlignedSolid1,
        injected_languages = true,
        highlight = "Muted",
        priority = 500,
        include = { node_type = { 
            ["*"] = GlobalNode,
            c = Cnode
        } },
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

function ToggleScope()

    if not SCOPE_DEFINE then
        SCOPE_DEFINE = true
        SCOPE_DisableAut = vim.api.nvim_create_autocmd(
            "InsertEnter",
            {
                pattern = "*",
                callback = function()
                    vim.cmd("IBLDisableScope")
                end
            }
        )
        SCOPE_EnableAut = vim.api.nvim_create_autocmd(
            "InsertLeave",
            {
                pattern = "*",
                callback = function()
                    vim.cmd("IBLEnableScope")
                end
            }
        )
        vim.cmd("IBLEnableScope")
    else
        SCOPE_DEFINE = nil
        vim.api.nvim_del_autocmd(SCOPE_DisableAut)
        vim.api.nvim_del_autocmd(SCOPE_EnableAut)
        vim.cmd("IBLDisableScope")
    end

end

vim.api.nvim_create_autocmd(
    "BufWinEnter",
    {
        pattern = "*.md,Makefile",
        callback = function()
            vim.cmd("IBLDisable")
        end
    }
)

vim.api.nvim_create_autocmd(
    "BufWinLeave",
    {
        pattern = "*.md,Makefile",
        callback = function()
            vim.cmd("IBLEnable")
        end
    }
)

