return {
  "sainnhe/gruvbox-material",
  priority = 1000,
  config = function()
    vim.cmd("colorscheme gruvbox-material")
  end,
  init = function()
    vim.cmd("let g:gruvbox_material_transparent_background = 1")
  end,
}
