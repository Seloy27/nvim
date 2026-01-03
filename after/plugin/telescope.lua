
local map = vim.keymap.set
local builtin = require('telescope.builtin')
local outline = require('outline')

map("n", "<leader>ft", builtin.colorscheme)
map( "n", "<leader>fa", "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>")
map('n', '<leader>fw', function()
    outline.focus_code()
    builtin.current_buffer_fuzzy_find()
end)
map('n', '<leader>ff', function()
    outline.focus_code()
    builtin.find_files()
end)
map('n', '<leader>fg', function()
    outline.focus_code()
    builtin.live_grep()
end)
map('n', '<leader>fb',function() 
    outline.focus_code()
    builtin.buffers()
end)
map('n', '<leader>fh', function()
    outline.focus_code()
    builtin.help_tags()
end)
map('n', '<leader>fd', function() 
    outline.focus_code()
    builtin.diagnostics()
end)

require('telescope').setup {
  defaults = {
    layout_config = {
      horizontal = { width = 0.78, height = 0.9},
      prompt_position = "top",
    },
    sorting_strategy = "ascending"
  }
}
