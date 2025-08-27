
vim.g.mapleader = " "
local map = vim.keymap.set

-- map("n", ";", ":")
map({"n", "i"}, "<A-w>", vim.cmd.w)
map("n", "<C-Up>", ":resize +2<CR>")
map("n", "<C-Down>", ":resize -2<CR>")
map("n", "<C-Left>", ":vertical resize -2<CR>")
map("n", "<C-Right>", ":vertical resize +2<CR>")
map("n", "<leader>qq", vim.cmd.q)
map("n", "<leader>fqq", "<cmd> q! <cr>")
map("n", "<leader>it", ":InspectTree<cr>")
map("n", "<leader>tp", ":TSPlaygroundToggle<cr>")
map("n", "<leader>x", "<cmd> bd <cr>")
map("n", "<leader>fx", "<cmd> bd! <cr>")
map("n", "<leader>da", "<cmd> %d <cr>")
map("n", "<leader>e", "<cmd> Ex <cr>")
-- map("n", "<leader>e", ":NvimTreeToggle <cr>")
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
map({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

map("n", "<leader>ps", ":Lazy sync <cr>")
map("n", "<leader>pm", ":Lazy <cr>")

map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")

map("n", "<Esc>", "<cmd>noh<CR>")

map('n', '<leader>u', vim.cmd.UndotreeToggle)

map({ "n", "x" }, "<leader>fm", function()
	require("conform").format({ lsp_fallback = true })
end, { desc = "general format file" })
