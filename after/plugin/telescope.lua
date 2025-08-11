
local map = vim.keymap.set
local builtin = require('telescope.builtin')

map("n", "<leader>ft", builtin.colorscheme)
map( "n", "<leader>fa", "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>")
map('n', '<leader>fw', builtin.current_buffer_fuzzy_find, { desc = 'Telescope find files' })
map('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
map('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
map('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
