
require("mason").setup({
    ui = {
        border = "rounded",

        icons = {
            package_installed = "●",
            package_pending = "➜",
            package_uninstalled = "○",
        },
    },
})

require("mason-lspconfig").setup({
    ensure_installed = { "rust_analyzer", "eslint", "ts_ls", "html", "tailwindcss" },

    automatic_enable = {
        exclude = {
            "lua_ls"
        }
    }
})

vim.lsp.enable("luals")
