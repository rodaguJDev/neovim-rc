vim.g.mapleader = " ";
vim.keymap.set("n", "<leader>pv", ":Ex<CR>");

-- Move entire line using K and J
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Pressing J will not move the cursor
vim.keymap.set("n", "J", "mzJ`z") --

-- Move Up and Down keep cursor at middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Next and Previous keep cursor at middle (search)
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- <leader>y yanks to system register
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Q doesn't work anyway
vim.keymap.set("n", "Q", "<nop>")

-- Quit vim quickly please
vim.keymap.set({"n", "v"}, "ZQ", vim.cmd.quit)

-- Delete without overriding memory
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
