return {
  "navarasu/onedark.nvim",
  priority = 1000,
  config = function()
    local onedark = require("onedark")

    onedark.setup({
      style = "darker",
      transparent = true,
      term_colors = true,
      highlights = {
        LineNr = { fg = '#ABB2BF' },
      },
    })

    onedark.load()
  end,
}
