vim.g.mapleader = " "

local keymap = vim.keymap

-- general
keymap.set({ "i", "c" }, "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set({ "i", "c" }, "ｊｋ", "<ESC>", { desc = "Exit insert mode with ｊｋ" })
keymap.set("i", "<C-v>", "<ESC>pa", { desc = "Paste." })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set({ "n", "v" }, "d", '"_d')                                  -- prevent to yank on delete
keymap.set('n', '<C-c>', '<C-w>w', { noremap = true, silent = true }) -- jump to floating window


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
keymap.set('n', 'j', 'gj', { noremap = true, silent = true })
keymap.set('n', 'k', 'gk', { noremap = true, silent = true })

-- for terminal
keymap.set('t', 'jk', '<C-\\><C-n>', { noremap = true })
