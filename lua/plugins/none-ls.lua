return {
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.prettier,
					null_ls.builtins.diagnostics.eslint_d,
				},
			})

			-- Auto format
			local useAutoFormat = true
			if useAutoFormat then
				vim.api.nvim_create_autocmd("BufWritePost", {
					callback = function()
						vim.lsp.buf.format()
					end,
				})
			end

			-- Keybinds
			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format)
		end,
	},
}
