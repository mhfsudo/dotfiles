-- Load zen (hhttps://github.com/folke/zen-mode.nvim)

return {
	"folke/zen-mode.nvim",
	config = function()
		opts = {}
		vim.keymap.set("n", "<leader>z", ":ZenMode<CR>", {})
	end,
}
