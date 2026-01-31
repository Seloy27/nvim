
local map = vim.keymap.set
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- map("n", "<leader>hd", mark.rm_file)
map("n", "<leader>a", mark.add_file)
map("n", "<A-e>", ui.toggle_quick_menu)

-- map("n", "<A-1>", function() ui.nav_file(1) end)
-- map("n", "<A-2>", function() ui.nav_file(2) end)
-- map("n", "<A-3>", function() ui.nav_file(3) end)
-- map("n", "<A-4>", function() ui.nav_file(4) end)
-- map("n", "<A-5>", function() ui.nav_file(5) end)
-- map("n", "<A-6>", function() ui.nav_file(6) end)
-- map("n", "<A-7>", function() ui.nav_file(7) end)
-- map("n", "<A-8>", function() ui.nav_file(8) end)
-- map("n", "<A-9>", function() ui.nav_file(9) end)

map("n", "<A-`>", function()
    require("harpoon.term").gotoTerminal(1)
end)
