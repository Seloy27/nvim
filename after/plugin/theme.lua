


-- =================================================================================================
--  SETUPS
-- =================================================================================================

rose_pine = "rose-pine"
rose_pine_moon = "rose_pine_moon"
rose_pine_dawn = "rose_pine_dawn"
rose_pine_main = "rose_pine_main"
onedark = "onedark"


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
		transparency = false,
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
		-- StatusLine = { fg = "love", bg = "foam", blend = 15 },
		-- VertSplit = { fg = "love", bg = "love" },
		Visual = { fg = "base", bg = "foam", inherit = false },
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

require("onedark").setup({
    style = "darker"
})


-- =================================================================================================
-- =================================================================================================

-- DEFAULT CALLS

vim.opt.guicursor = "n-i-v-c:block"
vim.cmd.colorscheme('rose-pine')

-- FUNCTION DEFINTIONS

function Theme(color)
    color = color or "rose-pine-main"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none", })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none", })
	return true;
end
Theme()

function CursorBlink(state)
    local sleep = 200

    function CASE1()
        vim.defer_fn(function()

            vim.api.nvim_set_hl(0, "Cursor", {
                bg = "#e0def4"
            })
            CASE2()
        end, sleep)
    end

    function CASE2()
        vim.defer_fn(function()

            vim.api.nvim_set_hl(0, "Cursor", {
                bg = "#eb6f92"
            })
            CASE1()
        end, sleep)
    end
    CASE1()

	vim.opt.guicursor = "n-i-v-c:block-Cursor,"

	if (state == false) then
	vim.opt.guicursor = "n-i-v-c:block"
	end
end
CursorBlink(false)

