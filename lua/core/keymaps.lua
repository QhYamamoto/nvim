vim.g.mapleader = " "

local keymap = vim.keymap

-- general
keymap.set({ "i", "v", "c" }, "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("i", "ppp", "<ESC>pa", { desc = "Paste." })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- window
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })

-- tab
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })

-- buffer
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>bp", "<cmd>bprev<CR>", { desc = "Jump to previous buffer" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- shortcuts to ensure compatibility with other editors
keymap.set("n", "<leader>bp", "<cmd>bprev<CR>", { desc = "Jump to previous buffer" })
keymap.set({ "n", "i", "v" }, "<C-s>", "<cmd>w<CR>", { desc = "Store" })
keymap.set({ "n", "i", "v" }, "<C-z>", "<cmd>u<CR>", { desc = "Undo" })
keymap.set({ "n", "i", "v" }, "<C-y>", "<cmd>red<CR>", { desc = "Redo" })
keymap.set({ "n", "i", "v" }, "<C-w>", "<cmd>bd<CR>", { desc = "Delete current buffer" })
keymap.set("n", "<tab>", "<cmd>><CR>", { desc = "Incriment indent level" })
keymap.set({ "n", "i" }, "<S-Tab>", "<cmd><<CR>", { desc = "Decriment indent level" })
keymap.set("n", "<A-Down>", "ddp", { desc = "Swap current line with line below" })
keymap.set("i", "<A-Down>", "<ESC>ddpi", { desc = "Swap current line with line below" })
keymap.set({ "n", "i" }, "<A-Up>", "<Up>ddp<Up>", { desc = "Swap current line with line above" })
keymap.set("i", "<A-Up>", "<ESC><Up>ddp<Up>i", { desc = "Swap current line with line above" })
keymap.set("n", "<C-a>", "gg^vG$", { desc = "Select whole text" })
