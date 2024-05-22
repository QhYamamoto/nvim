return {
  "romgrk/barbar.nvim",
  dependencies = {
    "lewis6991/gitsigns.nvim",     -- OPTIONAL: for git status
    "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false

    local keymap = vim.keymap
    local opts = function(desc)
      return { desc = desc, silent = true }
    end
    -- custom keymaps
    keymap.set("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts("Go to previous buffer"))
    keymap.set("n", "<A-.>", "<Cmd>BufferNext<CR>", opts("Go to next buffer"))

    keymap.set("n", "<leader>1", "<Cmd>BufferGoto 1<CR>", opts("Go to buffer 1"))
    keymap.set("n", "<leader>2", "<Cmd>BufferGoto 2<CR>", opts("Go to buffer 2"))
    keymap.set("n", "<leader>3", "<Cmd>BufferGoto 3<CR>", opts("Go to buffer 3"))
    keymap.set("n", "<leader>4", "<Cmd>BufferGoto 4<CR>", opts("Go to buffer 4"))
    keymap.set("n", "<leader>5", "<Cmd>BufferGoto 5<CR>", opts("Go to buffer 5"))
    keymap.set("n", "<leader>6", "<Cmd>BufferGoto 6<CR>", opts("Go to buffer 6"))
    keymap.set("n", "<leader>7", "<Cmd>BufferGoto 7<CR>", opts("Go to buffer 7"))
    keymap.set("n", "<leader>8", "<Cmd>BufferGoto 8<CR>", opts("Go to buffer 8"))
    keymap.set("n", "<leader>9", "<Cmd>BufferGoto 9<CR>", opts("Go to buffer 9"))
    keymap.set("n", "<leader>0", "<Cmd>BufferLast<CR>", opts("Go to last buffer"))
  end,
  opts = {
    icons = {
      buffer_index = true,
    },
  },
  version = "^1.0.0", -- optional: only update when a new 1.x version is released
}
