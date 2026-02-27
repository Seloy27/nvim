local map = vim.keymap.set
local builtin = require("telescope.builtin")
local outline = require("outline")

map("n", "<leader>ft", function()
    builtin.colorscheme()
end)

map("n", "<leader>fa", function()
    builtin.find_files({
        follow = true,
        no_ignore = true,
        hidden = true
    })
end)

map("n", "<leader>fw", function()
	builtin.current_buffer_fuzzy_find({
        layout_config = {
            horizontal = {
                width = 120,
                preview_width = 70
            }
        }
    })
end)

map("n", "<leader>ff", function()
	builtin.find_files({
        previewer = false,
        layout_config = {
            horizontal = {
                width = 80,
                height = 25
            }
        }
    })
end)

map("n", "<leader>fg", function()
	builtin.live_grep({
        layout_config = {
            horizontal = {
                width = 120,
                preview_width = 70
            }
        }
    })
end)

map("n", "<leader>fb", function()
	builtin.buffers()
end)

map("n", "<leader>fd", function()
	builtin.diagnostics({
        bufnr = 0,
        previewer = false
    })
end)

map("n", "<leader>fD", function()
	builtin.diagnostics()
end)

require("telescope").setup({
	defaults = {
		layout_config = {
			prompt_position = "top",
		},
		sorting_strategy = "ascending",
	},

    pickers = {

        colorscheme = {
            theme = "dropdown"
        },

        diagnostics = {
            theme = "ivy",
            layout_config = {
                height = 100
            }
        },

        current_buffer_fuzzy_find = {
            layout_config = {
                height = 40,
            }
        }

    }
})
