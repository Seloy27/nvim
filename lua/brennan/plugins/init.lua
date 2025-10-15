-- lua/plugins/rose-pine.lua
return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
	},
	{
		"folke/tokyonight.nvim",
		lazy = true,
		priority = 1000,
		opts = {},
	},
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
  },
	{
		"windwp/nvim-autopairs",
		-- enabled = false,
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
	  enable = true,
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
		},
	},
	{
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
    enable = true,
    cmd = { "Mason", "MasonInstall", "MasonUpdate" },
    lazy = false,
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
		"navarasu/onedark.nvim",
    lazy = true,
	},
	{
		"L3MON4D3/LuaSnip",
		version = "v2.*",
	},
	{
		"hedyhli/outline.nvim",
		config = function()
			-- Example mapping to toggle outline
			vim.keymap.set("n", "<leader>o", "<cmd>topleft Outline<CR>")
		end,
	},
  {
    'f-person/git-blame.nvim',
    event = "VeryLazy",
  },
  {
    "lewis6991/gitsigns.nvim",
    lazy = true,
  },
  {
    "folke/snacks.nvim",
    lazy = false,
  }
}
