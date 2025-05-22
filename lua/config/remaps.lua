vim.g.mapleader = " "
vim.g.maplocalleader = " "

local km = vim.keymap

-- clear highlight on escape
km.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- dianostics
km.set("n", "[d", vim.diagnostic.goto_prev, { desc="Go to previous [D]iagnostic message" })
km.set("n", "]d", vim.diagnostic.goto_next, { desc="Go to next [D]iagnostic message" })
km.set("n", "<leader>e", vim.diagnostic.open_float, { desc="Show diagnostic [E]rror message" })
km.set("n", "<leader>q", vim.diagnostic.setloclist, { desc="Open diagnostic [Q]uickfix list" })

-- window selection
km.set("n", "<C-h>", "<C-w>h", { desc="Go to left window" })
km.set("n", "<C-j>", "<C-w>j", { desc="Go to lower window" })
km.set("n", "<C-k>", "<C-w>k", { desc="Go to upper window" })
km.set("n", "<C-l>", "<C-w>l", { desc="Go to right window" })

-- move lines
km.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc="Move up" })
km.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc="Move up" })
km.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc="Move up" })
km.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc="Move down" })
km.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc="Move down" })
km.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc="Move down" })

-- move lines (but for silly macs)
km.set("n", "˚", "<cmd>m .-2<cr>==", { desc="Move up" })
km.set("v", "˚", ":m '<-2<cr>gv=gv", { desc="Move up" })
km.set("i", "˚", "<esc><cmd>m .-2<cr>==gi", { desc="Move up" })
km.set("n", "∆", "<cmd>m .+1<cr>==", { desc="Move down" })
km.set("v", "∆", ":m '>+1<cr>gv=gv", { desc="Move down" })
km.set("i", "∆", "<esc><cmd>m .+1<cr>==gi", { desc="Move down" })

-- file exploring
km.set("n", "<leader>pv", vim.cmd.Ex, { desc="Project view" })

-- disable arrow keys in normal/view to be a good little vimmer
km.set({ "n", "v" }, "<left>", "<cmd>echo 'Use h to move!!'<CR>")
km.set({ "n", "v" }, "<right>", "<cmd>echo 'Use l to move!!'<CR>")
km.set({ "n", "v" }, "<up>", "<cmd>echo 'Use k to move!!'<CR>")
km.set({ "n", "v" }, "<down>", "<cmd>echo 'Use j to move!!'<CR>")
