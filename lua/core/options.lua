vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indention
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.list = true -- make all white chars visible
opt.listchars = { -- setting for each white chars
	tab = "|-",
	space = "･",
	trail = "･",
	eol = "↲",
	extends = "»",
	precedes = "«",
	nbsp = "%",
}

-- search settings
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true
opt.winblend = 0
opt.pumblend = 0
-- opt.background = "dark"
-- opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true
