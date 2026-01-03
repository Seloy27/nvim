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

	indent = {
		char = "│",
		-- char = "»",
		smart_indent_cap = true,
		highlight = "IblIndent",
	},
})

require("snacks").setup({

	-- input = {},

	quickfile = {},

	-- bigfile = {},

	-- explorer = {
	--
	-- },

    dim = {
        animate = {

            enabled = vim.fn.has("nvim-0.10") == 0;
        },
    },

	zen = {
		width = 900,
        toggles = {

            dim = false,
        },
        zoom = {
            backdrop = true,
        },
	},

	scope = {
		enabled = true, -- enable highlighting the current scope
		priority = 200,
		char = "│",
		underline = false, -- underline the start of the scope
		only_current = false, -- only show scope in the current window
		hl = "SnacksIndentScope", ---@type string|string[] hl group for scopes
	},

	indent = {

		enabled = false,
		animate = {
			duration = {
				step = 0,
				total = 0,
			},
		},
	},
})

-- Snacks.input.enable()

vim.keymap.set("n", "<leader>z", function ()
    Snacks.zen()
end)
