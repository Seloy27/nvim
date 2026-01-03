local outline = require("outline")

outline.setup({
    outline_items = {
        show_symbol_lineno = true,
    },
    preview_window = {
        winhl = 'NormalFloat:',
        live = true,
    },
    outline_window = {
        -- width = 22,
    },

    symbols = {
        icon_fetcher = function(kind, bufnr, symbol)
            local access_icons = { public = '○', protected = '◉', private = '●' }
            local icon = require('outline.config').o.symbols.icons[kind].icon
            -- ctags provider might add an `access` key
            if symbol and symbol.access then
                return icon .. ' ' .. access_icons[symbol.access]
            end
            return icon
        end,
    },
})

-- keymaps 
vim.keymap.set("n", "<leader>o", function()

    vim.cmd("UndotreeHide")
    if (not outline.is_open()) then
        outline.toggle({ focus = false })
    elseif (outline.is_open() and not outline.has_focus()) then
        outline.focus_outline()
    elseif (outline.has_focus()) then
        outline.toggle()
    end
end)
