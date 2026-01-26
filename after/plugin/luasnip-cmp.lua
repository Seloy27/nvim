local cmp = require("cmp")
local luasnip = require("luasnip")

require("luasnip.loaders.from_vscode").lazy_load({
	paths = {
		"~/.local/share/nvim/lazy/friendly-snippets",
        "~/.config/nvim/my-snippets",
	},
})

cmp.setup({
	window = {
		completion = {
            border = "rounded",
            max_height = 20,
            winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel"
        },
		documentation = {
            border = "single",
        },
	},

	formatting = {
		fields = { "abbr", "kind", "menu" },
		format = function(entry, vim_item)
			vim_item.abbr = string.sub(vim_item.abbr, 1, 30) -- shorten long items
			return vim_item
		end,
	},

	-- performance = {
	--   max_view_entries = 15,
	-- },

	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-Space>"] = cmp.mapping.complete(),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end, { "i", "s" }),

		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),

		["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp", priority = 1000 },
		{ name = "luasnip", priority = 1100 },
		{ name = "buffer", priority = 500 },
		{ name = "path", priority = 250 },
	}),

	auto_brackets = {}, -- configure any filetype to auto add brackets
	-- experimental = {
	--   ghost_text = true,
	-- }
})

