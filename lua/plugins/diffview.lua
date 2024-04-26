return {
	"sindrets/diffview.nvim",
	config = function()
		vim.keymap.set("n", "<leader>gdo", "<cmd>:DiffviewOpen<CR>")
		vim.keymap.set("n", "<leader>gdc", "<cmd>:DiffviewClose<CR>")
	end,
}
