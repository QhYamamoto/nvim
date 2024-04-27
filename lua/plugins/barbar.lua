return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	init = function()
		vim.g.barbar_auto_setup = false

		-- custom keymaps
		vim.keymap.set("n", "<A-,>", "<Cmd>BufferPrevious<CR>", { desc = "Go to previous buffer" })
		vim.keymap.set("n", "<A-.>", "<Cmd>BufferNext<CR>", { desc = "Go to next buffer" })

		vim.keymap.set("n", "<leader>1", "<Cmd>BufferGoto 1<CR>", { desc = "Go to buffer 1" })
		vim.keymap.set("n", "<leader>2", "<Cmd>BufferGoto 2<CR>", { desc = "Go to buffer 2" })
		vim.keymap.set("n", "<leader>3", "<Cmd>BufferGoto 3<CR>", { desc = "Go to buffer 3" })
		vim.keymap.set("n", "<leader>4", "<Cmd>BufferGoto 4<CR>", { desc = "Go to buffer 4" })
		vim.keymap.set("n", "<leader>5", "<Cmd>BufferGoto 5<CR>", { desc = "Go to buffer 5" })
		vim.keymap.set("n", "<leader>6", "<Cmd>BufferGoto 6<CR>", { desc = "Go to buffer 6" })
		vim.keymap.set("n", "<leader>7", "<Cmd>BufferGoto 7<CR>", { desc = "Go to buffer 7" })
		vim.keymap.set("n", "<leader>8", "<Cmd>BufferGoto 8<CR>", { desc = "Go to buffer 8" })
		vim.keymap.set("n", "<leader>9", "<Cmd>BufferGoto 9<CR>", { desc = "Go to buffer 9" })
		vim.keymap.set("n", "<leader>0", "<Cmd>BufferLast<CR>", { desc = "Go to last buffer" })
	end,
	opts = {
		icons = {
			buffer_index = true,
		},
	},
	version = "^1.0.0", -- optional: only update when a new 1.x version is released
}
