-- lua/plugins/rose-pine.lua
return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equivalent to setup({}) function
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"ThePrimeagen/harpoon",
	},
	{
		"nvim-lualine/lualine.nvim",
		lazy = true,
		-- dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		-- LSP Support
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
		},
	},
	{
		-- Autocompletion
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"saadparwaiz1/cmp_luasnip",
			"L3MON4D3/LuaSnip",
		},
	},
	{
		"williamboman/mason.nvim",
		cmd = { "Mason", "MasonInstall", "MasonUpdate" },
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"stevearc/conform.nvim",
		opts = {},
	},
	{
		"rafamadriz/friendly-snippets",
		config = function()
			require("luasnip.loaders.from_vscode").lazy_load()
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		lazy = false,
		build = ":TSUpdate",
		dependencies = {
			"nvim-treesitter/playground",
		},
	},
	{
		"mbbill/undotree",
		lazy = false,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
	},
	{
		"nvim-tree/nvim-tree.lua",
		enabled = false,
		lazy = true,
	},
	{
		"andymass/vim-matchup",
		opts = {
			treesitter = {
				stopline = 500,
			},
		},
	},
	{
		"navarasu/onedark.nvim",
	},
}
