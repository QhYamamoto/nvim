return {
	"jose-elias-alvarez/buftabline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("buftabline").setup({
			tab_format = "#{n} #{i} #{b}#{f} ",
		})
	end,
}
