return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
    local comment = require("Comment")
    local api = require("Comment.api")

    local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

    comment.setup({
      pre_hook = ts_context_commentstring.create_pre_hook(),
      toggler = {
        line = "<C-_>",
        block = "<S-M-a>",
      },
      opleader = {
        line = "<C-_>",
        block = "<S-M-a>",
      }
    })

    -- -- Toggle linewise comment
    -- vim.keymap.set({ "n", "i", "x" }, "<C-_>", api.toggle.linewise.current, { desc = "Toggle line comment" })
    -- -- Toggle blockwise comment
    -- vim.keymap.set({ "n", "i", "x" }, "<S-M-a>", api.toggle.blockwise.current, { desc = "Toggle block comment" })
  end,
}
