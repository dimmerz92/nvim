vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

-- clear highlight on escape
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- move lines
map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc="Move up" })
map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc="Move up" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc="Move up" })
map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc="Move down" })
map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc="Move down" })
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc="Move down" })

-- move lines (but for silly macs)
map("n", "˚", "<cmd>m .-2<cr>==", { desc="Move up" })
map("v", "˚", ":m '<-2<cr>gv=gv", { desc="Move up" })
map("i", "˚", "<esc><cmd>m .-2<cr>==gi", { desc="Move up" })
map("n", "∆", "<cmd>m .+1<cr>==", { desc="Move down" })
map("v", "∆", ":m '>+1<cr>gv=gv", { desc="Move down" })
map("i", "∆", "<esc><cmd>m .+1<cr>==gi", { desc="Move down" })

-- file exploring
map("n", "<leader>pv", vim.cmd.Ex, { desc="Project view" })

-- disable arrow keys in normal/view to be a good little vimmer
map({ "n", "v" }, "<left>", "<cmd>echo 'Use h to move!!'<CR>")
map({ "n", "v" }, "<right>", "<cmd>echo 'Use l to move!!'<CR>")
map({ "n", "v" }, "<up>", "<cmd>echo 'Use k to move!!'<CR>")
map({ "n", "v" }, "<down>", "<cmd>echo 'Use j to move!!'<CR>")
