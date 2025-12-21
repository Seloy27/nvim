vim.g.mapleader = " "
local map = vim.keymap.set

-- map("n", ";", ":")
map({ "n", "i" }, "<A-w>", vim.cmd.w, { silent = true })
map("n", "<C-Up>", ":resize +2<CR>", { silent = true })
map("n", "<C-Down>", ":resize -2<CR>", { silent = true })
map("n", "<C-Left>", ":vertical resize -2<CR>", { silent = true })
map("n", "<C-Right>", ":vertical resize +2<CR>", { silent = true })
map("n", "<leader>q", vim.cmd.q)
map("n", "<leader>fq", "<cmd> q! <cr>", { silent = true })
map("n", "<leader>it", ":InspectTree<cr>", { silent = true })
map("n", "<leader>tp", ":TSPlaygroundToggle<cr>", { silent = true })
map("n", "<leader>x", "<cmd> bd <cr>", { silent = true })
map("n", "<leader>fx", "<cmd> bd! <cr>", { silent = true })
map("n", "<leader>da", "<cmd> %d <cr>", { silent = true })
map("n", "<leader>e", "<cmd> Ex <cr>", { silent = true })
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
map({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

map("n", "<leader>ps", ":Lazy sync <cr>", { silent = true })
map("n", "<leader>pm", ":Lazy <cr>", { silent = true })

map("n", "<C-h>", "<C-w>h", { silent = true })
map("n", "<C-l>", "<C-w>l", { silent = true })
map("n", "<C-j>", "<C-w>j", { silent = true })
map("n", "<C-k>", "<C-w>k", { silent = true })

map("n", "<A-l>", "<cmd>:normal! 10zl<cr>", { silent = true })
map("n", "<A-h>", "<cmd>:normal! 10zh<cr>", { silent = true })

map("n", "<Esc>", "<cmd>noh<CR>")

map("n", "<leader>u", "<cmd>UndotreeToggle | UndotreeFocus<cr>", { silent = true })

map({ "n", "x" }, "<leader>fm", function()
	require("conform").format({ lsp_fallback = true })
end)

map("n", "<leader>sw", function()
	vim.ui.input({ prompt = "Set Shiftwidth: " }, function(input)
		vim.o.shiftwidth = tonumber(input)
	end)
end)

map("n", "<leader>st", "<cmd>:lua Switch()<cr>", { silent = true })

map('n', "<leader>tn", "<cmd>:tabnew | Explore<cr>", { silent = true })
map("i", "<A-BS>", "<cmd>normal! db<cr>", { noremap = true, silent = true })
map("n", "<leader>z", function ()
  Snacks.zen()
end, { silent = true })

map("n", "<leader>m", function()
  vim.diagnostic.setloclist()
end, { silent = true })

map("t", "<C-x>", "<C-\\><C-N>", { silent = true})

map("n", "<leader>nm", function()

  if not vim.opt.modifiable:get() == false  then
    vim.opt.modifiable = false
    print("modifiable is set to ", vim.opt.modifiable:get())
  else
    vim.opt.modifiable = true
    print("modifiable is set to ", vim.opt.modifiable:get())
  end
end)

