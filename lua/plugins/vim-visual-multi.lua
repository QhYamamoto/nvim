return {
	"mg979/vim-visual-multi",
	init = function()
		local VM_maps = {}
		VM_maps["Select Cursor Down"] = "<M-j>"
		VM_maps["Select Cursor Up"] = "<M-k>"
		vim.g.VM_maps = VM_maps

		vim.g.VM_Mono_hl = "red"
		vim.g.VM_Extend_hl = "red"
		vim.g.VM_Cursor_hl = "red"
		vim.g.VM_Insert_hl = "red"
	end,
}
