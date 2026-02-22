-- lua/plugins/rose-pine.lua
return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {}
    },
    {
        "windwp/nvim-autopairs",
        enabled = false,
        event = "InsertEnter",
        config = true
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
        "ThePrimeagen/harpoon"
    },
    {
        "nvim-lualine/lualine.nvim",
        lazy = true,
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },
    {
        -- LSP Support
        "neovim/nvim-lspconfig",
        enabled = true,
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
        }
    },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "saadparwaiz1/cmp_luasnip",
            "L3MON4D3/LuaSnip"
        }
    },
    {
        "williamboman/mason.nvim",
        enabled = true,
        cmd = { "Mason", "MasonInstall", "MasonUpdate" },
        lazy = false
    },
    {
        "stevearc/conform.nvim",
        opts = {}
    },
    {
        "rafamadriz/friendly-snippets"
    },
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        lazy = false,
        build = ":TSUpdate",
        dependencies = {
            "nvim-treesitter/playground"
        }
    },
    {
        "mbbill/undotree",
        lazy = false
    },
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        dependencies = { "rafamadriz/friendly-snippets" }
    },
    {
        "hedyhli/outline.nvim"
    },
    {
        "lewis6991/gitsigns.nvim",
        lazy = true
    },
    {
        "folke/snacks.nvim",
        lazy = false
    },
    {
        'kdheepak/monochrome.nvim'
    },
    {
        'datsfilipe/vesper.nvim',
        priority = 1000
    },
    {
        "navarasu/onedark.nvim",
        lazy = false
    },
    {
        "folke/zen-mode.nvim",
        lazy = true
    },
    {
        'akinsho/bufferline.nvim',
        lazy = true
        -- enabled = false
    },
    {
        'kdheepak/tabline.nvim',
        lazy = true
    }
}
