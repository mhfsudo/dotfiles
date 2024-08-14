-- Load treesitter (https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file)

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
      auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
