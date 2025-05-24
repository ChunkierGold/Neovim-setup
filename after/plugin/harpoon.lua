--local mark = require("harpoon.mark")
--local ui = require("harpoon.ui")
local harpoon = require("harpoon")

harpoon:setup()

--vim.keymap.set("n", "<leader>a", mark.add_file)
--vim.keymap.set("n", "C-e", ui.toggle_quick_menu2)
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-u>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-i>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-o>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-p>", function() harpoon:list():select(4) end)
--vim.keymap.set("n", "C-j", function() ui.nav_file(1) end)
--vim.keymap.set("n", "C-k", function() ui.nav_file(2) end)
--vim.keymap.set("n", "C-l", function() ui.nav_file(3) end)
--vim.keymap.set("n", "C-;", function() ui.nav_file(4) end)

vim.keymap.set("n", "<C-a>", function() harpoon:list():clear() end)
