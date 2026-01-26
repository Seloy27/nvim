
vim.g.mapleader = " "
local map = vim.keymap.set

-- map("n", ";", ":")
map("n", "<C-Up>", function()
	vim.cmd("resize +2<CR>")
end)
map("n", "<C-Down>", function()
	vim.cmd("resize -2<CR>")
end)
map("n", "<C-Left>", function()
	vim.cmd("vertical resize -2<CR>")
end)
map("n", "<C-Right>", function()
	vim.cmd("vertical resize +2<CR>")
end)
map("n", "<leader>q", function()
	vim.cmd("qa")
end)
map("n", "<leader>fq", function()
	vim.cmd("qa!")
end)
map("n", "<leader>it", function()
	vim.cmd("InspectTree")
end)
map("n", "<leader>tp", function()
	vim.cmd("TSPlaygroundToggle")
end)
map("n", "<leader>x", function()
	vim.cmd("OutlineClose")
	vim.cmd("bd")
end)
map("n", "<leader>fx", function()
	vim.cmd("bd!")
end)
map("n", "<leader>da", function()
	vim.cmd("%d")
end)

map("n", "<leader>ps", function()
	vim.cmd("Lazy sync")
end)
map("n", "<leader>pm", function()
	vim.cmd("Lazy")
end)

map("n", "<A-l>", function()
	vim.cmd("normal! 10zl")
end)
map("n", "<A-h>", function()
	vim.cmd("normal! 10zh")
end)

map("n", "<leader>u", function()
	vim.cmd("OutlineClose")
	vim.cmd("UndotreeToggle")
end)

map({ "n", "x" }, "<leader>fm", function()
	require("conform").format({ lsp_fallback = true })
end)

map("n", "<leader>sw", function()
	vim.ui.input({ prompt = "Set Shiftwidth: " }, function(input)
		vim.o.shiftwidth = tonumber(input)
	end)
end)

map("n", "<leader>tn", function()
	vim.cmd("tabnew | NvimTreeFocus<cr>")
end)

map("n", "<leader>nm", function()
	if not vim.opt.modifiable:get() == false then
		vim.opt.modifiable = false
	else
		vim.opt.modifiable = true
	end
end)
