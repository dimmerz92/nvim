-- DISPLAY
vim.g.have_nerd_font = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.showmode = false
vim.opt.signcolumn = "yes"
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.opt.inccommand = "split"
vim.opt.cursorline = true
vim.opt.scrolloff = 20
vim.opt.hlsearch = true

-- FOLDERS, FILES & DATA
vim.opt.clipboard = "unnamedplus" -- Sync clipboard between OS and Neovim.
vim.opt.undofile = true -- Save undo history
vim.opt.updatetime = 250

-- TEXT
vim.opt.breakindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.smarttab = true
vim.opt.smartindent = true
