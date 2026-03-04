local lualine = require("lualine")
local function FILENAME()
	local file = vim.fn.expand("%:.")
	return string.gsub(file, "(%a*%_*%a+)(%p?)(%w*)$", "")
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

		lualine_c = { { FILENAME, separator = { right = "" } }, { "filename", color = {fg ="#f6c177"}, separator = { left = "" } } },

		lualine_x = { "encoding" },
		lualine_y = { "location", "progress" },
		lualine_z = {},
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {},
})

