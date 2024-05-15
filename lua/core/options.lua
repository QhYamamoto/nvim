vim.cmd("let g:netrw_liststyle = 3")
vim.cmd("let g:gruvbox_material_transparent_background = 1")

-- register autocmds
vim.api.nvim_create_augroup("lua", {})

vim.api.nvim_create_autocmd({
  "InsertLeave",
  "CmdlineLeave",
}, {
  group = "lua",
  callback = function()
    os.execute("$zenhan 0 > /tmp/output 2>&1")
  end,
})

-- vim options
local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indention
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.list = true   -- make all white chars visible
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

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

opt.whichwrap:append({
  ["<"] = true,
  [">"] = true,
  ["["] = true,
  ["]"] = true,
})
