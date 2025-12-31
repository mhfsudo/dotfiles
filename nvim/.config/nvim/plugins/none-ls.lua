-- Load none-ls plugin (https://github.com/nvimtools/none-ls.nvim)

return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.biome,
				null_ls.builtins.formatting.black, -- python
				null_ls.builtins.formatting.codespell,
				null_ls.builtins.formatting.isort, -- python
				null_ls.builtins.formatting.markdownlint, -- markdown
				null_ls.builtins.formatting.prettier, -- javascript
				null_ls.builtins.formatting.stylua, -- lua
				null_ls.builtins.diagnostics.erb_lint, -- javascript
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
