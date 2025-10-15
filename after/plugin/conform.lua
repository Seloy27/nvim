local state = "standard"

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		-- Conform will run multiple formatters sequentially
		python = { "isort", "black" },
		-- You can customize some of the format options for the filetype (:help conform.format)
		rust = { "rustfmt", lsp_format = "fallback" },
		-- Conform will run the first available formatter
		-- javascript = { "prettierd", "prettier", stop_after_first = true },
		javascript = {},
		html = {},
		css = { "prettierd", "prettier", stop_after_first = true },
	},
})

local conform = require("conform")

function Standard()
	conform.setup({
		formatters_by_ft = {
			html = {},
		},
	})
  state = "standard"
end

function Prettier()
	conform.setup({
		formatters_by_ft = {
			html = { "prettierd", "prettier", stop_after_first = true },
		},
	})
  state = "prettier"
end

function Current()
  print(state)
end
