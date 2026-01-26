local map = vim.keymap.set
local builtin = require("telescope.builtin")
local pv = require("telescope.previewers")
local outline = require("outline")

local new_previewer = pv.Previewer:new()
map("n", "<leader>ft", builtin.colorscheme)

map("n", "<leader>fa", function()
    outline.focus_code()
    builtin.find_files({
        follow = true,
        no_ignore = true,
        hidden = true
    })
end)

map("n", "<leader>fw", function()
	outline.focus_code()
	builtin.current_buffer_fuzzy_find()
end)

map("n", "<leader>ff", function()
	outline.focus_code()
	builtin.find_files({
        previewer = false
    })
end)

map("n", "<leader>fg", function()
	outline.focus_code()
	builtin.live_grep()
end)

map("n", "<leader>fb", function()
	outline.focus_code()
	builtin.buffers()
end)

map("n", "<leader>fh", function()
	outline.focus_code()
	builtin.help_tags()
end)

map("n", "<leader>fd", function()
	outline.focus_code()
	builtin.diagnostics({
        bufnr = 0
    })
end)

map("n", "<leader>fD", function()
	outline.focus_code()
	builtin.diagnostics()
end)

map("n", "<leader>pv", function()
    pv.new()
end)

require("telescope").setup({
	defaults = {
		layout_config = {
			horizontal = { width = 0.68, height = 0.8 },
			prompt_position = "top",
		},
		sorting_strategy = "ascending",
	},

    pickers = {

        colorscheme = {
            theme = "dropdown"
        },

        find_files = {
            theme = "dropdown",
            layout_config = {
                height = 17
            }
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
