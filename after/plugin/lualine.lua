local lualine = require("lualine")

-- Checks wether expandtab is on/off and determines shiftwidth value
local function TabCheck()

    local tabstop = vim.o.tabstop
    local shiftwidth = vim.o.shiftwidth

    if (vim.o.expandtab) then
        return "Spaces:"..shiftwidth
    else 
        return "Tabs:"..tabstop
    end
end

lualine.setup({
    options = {
        icons_enabled = false,
        theme = "auto",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
            statusline = {},
            winbar = {},
            netrw = {}
        },
        ignore_focus = { "NvimTree", "OUTLINE_1" },
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
            refresh_time = 16, -- ~60fps
            events = {
                "WinEnter",
                "BufEnter",
                "BufWritePost",
                "SessionLoadPost",
                "FileChangedShellPost",
                "VimResized",
                "Filetype",
                "CursorMoved",
                "CursorMovedI",
                "ModeChanged",
            },
        },
    },
    sections = {
        lualine_a = { "mode" },
        lualine_b = { { "branch", separator = { right = "|" } }, "diff" },
        lualine_c = { { "filename", path = 1 }},
        lualine_x = { "encoding", TabCheck },
        lualine_y = { "location", "progress" },
        lualine_z = {},
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {},
})
