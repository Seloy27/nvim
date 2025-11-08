local color = vim.cmd
local rose_pine = require("rose-pine")

rose_pine.setup({
	variant = "auto", -- auto, main, moon, or dawn
	dark_variant = "main", -- main, moon, or dawn
	dim_inactive_windows = false,
	extend_background_behind_borders = true,

	enable = {
		terminal = true,
		legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
		migrations = true, -- Handle deprecated options automatically
	},

	styles = {
		bold = false,
		italic = false,
		transparency = true,
	},

  lualine_bold = false,

	groups = {
		border = "muted",
		link = "iris",
		panel = "surface",

		error = "love",
		hint = "iris",
		info = "foam",
		note = "pine",
		todo = "rose",
		warn = "gold",

		git_add = "foam",
		git_change = "rose",
		git_delete = "love",
		git_dirty = "rose",
		git_ignore = "muted",
		git_merge = "iris",
		git_rename = "pine",
		git_stage = "iris",
		git_text = "rose",
		git_untracked = "subtle",

		h1 = "iris",
		h2 = "foam",
		h3 = "rose",
		h4 = "gold",
		h5 = "pine",
		h6 = "foam",
	},

	palette = {
		-- Override the builtin palette per variant
		-- moon = {
		--     base = '#18191a',
		--     overlay = '#363738',
		-- },
	},

	-- NOTE: Highlight groups are extended (merged) by default. Disable this
	-- per group via `inherit = false`
	highlight_groups = {
		-- Comment = { fg = "foam" },
		StatusLine = { fg = "love", bg = "foam", blend = 15 },
		-- VertSplit = { fg = "love", bg = "love" },
		-- Visual = { fg = "base", bg = "text", inherit = false },
	},

	before_highlight = function(group, highlight, palette)
		-- Disable all undercurls
		-- if highlight.undercurl then
		--     highlight.undercurl = false
		-- end

		-- Change palette colour
		-- if highlight.fg == palette.pine then
		--     highlight.fg = palette.foam
		-- end
	end,
})

require("tokyonight").setup({
  style = "night",
  transparent = true,
  styles = {
    keywords = { italic = false, bold = false },
    variables = { bold = false },
    floats = "transparent",
  },
  lualine_bold = true,
})

require("onedark").setup({})

function Solid()
	rose_pine.setup({
		styles = {
			transparency = false,
		},
	})

	color("color rose-pine-main")
end

function Transparent()
	rose_pine.setup({
		styles = {
			transparency = true,
		},
	})

	color("color rose-pine-main")
end

function Switch()
	vim.ui.input({ prompt = "S or T > " }, function(input)
		if input == "S" then
			return Solid()
		elseif input == "T" then
			return Transparent()
    elseif input == "s" then
      return Solid()
    elseif input == "t" then
      return Transparent()
		else
			return 0
		end
	end)
end

color("colorscheme onedark")
-- color("colo tokyonight")
-- color("colorscheme rose-pine-main")
-- color("colorscheme andromeda")
