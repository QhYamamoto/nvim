vim.g.mapleader = " "

local keymap = vim.keymap

-- function for repeat function
local function repeat_func(func, count)
  if count == 0 then
    func()
    return
  end
  for _ = 1, count do
    func()
  end
end

-- general
keymap.set({ "i", "c" }, "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set({ "i", "c" }, "ｊｋ", "<ESC>", { desc = "Exit insert mode with ｊｋ" })
keymap.set("i", "<C-v>", "<ESC>pa", { desc = "Paste." })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set({ "n", "v" }, "d", '"_d')                                  -- prevent to yank on delete
keymap.set("n", "<C-c>", "<C-w>w", { noremap = true, silent = true }) -- jump to floating window
keymap.set("n", "<leader>q", "<CMD>qa<CR>")


-- window
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })

-- shortcuts to ensure compatibility with other editors
keymap.set("n", "<leader>bp", "<cmd>bprev<CR>", { desc = "Jump to previous buffer" })
keymap.set({ "n", "i" }, "<C-s>", "<cmd>silent! w<CR>", { desc = "Store" })
keymap.set({ "n", "i", "v" }, "<C-z>", "<cmd>silent! u<CR>", { desc = "Undo" })
keymap.set({ "n", "i", "v" }, "<C-y>", "<cmd>silent! redo<CR>", { desc = "Redo" })
keymap.set({ "n", "i", "v" }, "<C-w>", "<cmd>bd!<CR>", { desc = "Delete current buffer" })
keymap.set("n", "<tab>", "<cmd>><CR>", { desc = "Incriment indent level" })
keymap.set({ "n", "i" }, "<S-Tab>", "<cmd><<CR>", { desc = "Decriment indent level" })
keymap.set("n", "<A-Down>", "ddp", { desc = "Swap current line with line below" })
keymap.set("i", "<A-Down>", "<ESC>ddpi", { desc = "Swap current line with line below" })
keymap.set({ "n", "i" }, "<A-Up>", "<Up>ddp<Up>", { desc = "Swap current line with line above" })
keymap.set("i", "<A-Up>", "<ESC><Up>ddp<Up>i", { desc = "Swap current line with line above" })
keymap.set("n", "<C-a>", "gg^vG$", { desc = "Select whole text" })
keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { noremap = true, silent = true, expr = true })
keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { noremap = true, silent = true, expr = true })
keymap.set("n", "<C-e>", "$", { noremap = true, silent = true })
keymap.set("i", "<C-e>", "<ESC>$a", { noremap = true, silent = true })


-- for terminal
keymap.set("t", "jk", "<C-\\><C-n>", { noremap = true })

keymap.set("n", "J", function()
    repeat_func(function()
      local current_line = vim.api.nvim_get_current_line()
      local next_line = vim.api.nvim_buf_get_lines(0, vim.fn.line(".") + 1 - 1, vim.fn.line(".") + 2 - 1, false)[1]
      if next_line then
        local next_line_trimmed = next_line:gsub("^%s+", "")
        vim.api.nvim_set_current_line(current_line .. next_line_trimmed)
        vim.api.nvim_buf_set_lines(0, vim.fn.line(".") + 1 - 1, vim.fn.line(".") + 1, false, {})
      end
    end, vim.v.count or 1
    )
  end,
  { noremap = true, silent = true }
)
