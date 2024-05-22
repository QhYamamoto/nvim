return {
  "sindrets/diffview.nvim",
  config = function()
    local keymap = vim.keymap

    keymap.set("n", "<leader>gdo", "<cmd>:DiffviewOpen<CR>", { desc = "Open diff view (HEAD~1..HEAD)" })
    keymap.set("n", "<leader>gdc", "<cmd>:DiffviewClose<CR>", { desc = "Close diff view" })
  end,
}
