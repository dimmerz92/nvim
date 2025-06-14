local vo = vim.opt

-- DISPLAY
vo.inccommand = "split"
vo.list = true
vo.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vo.mouse = "a"
vo.number = true
vo.relativenumber = true
vo.scrolloff = 10
vo.signcolumn = "yes"
vo.splitbelow = true
vo.splitright = true
vo.termguicolors = true
vo.winborder = "rounded"

-- BACKEND
vo.clipboard = "unnamedplus"
vo.undofile = true
vo.updatetime = 250
vo.timeoutlen = 300

-- TEXT
vo.autoindent = true
vo.breakindent = true
vo.ignorecase = true
vo.linebreak = true
vo.shiftwidth = 4
vo.softtabstop = 4
vo.tabstop = 4
