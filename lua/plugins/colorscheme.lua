return {
	"cpea2506/one_monokai.nvim",
	priority = 1000,
	config = function()
		require("one_monokai").setup({
			transparent = true,
			themes = function()
				return {
					TabLineFill = { bg = "NONE" },
				}
			end,
		})

		vim.cmd("colorscheme one_monokai")
	end,
}
