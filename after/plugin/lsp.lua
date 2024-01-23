require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls" }
})

vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('UserLspConfig', {}),
	callback = function(ev)
		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

		-- Buffer local mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		local opts = { buffer = ev.buf }
		-- Go to variable declaration
		--vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
		--vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
		vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
		vim.keymap.set('n', 'gd', require('telescope.builtin').lsp_definitions, opts)
		vim.keymap.set('n', 'gi', require('telescope.builtin').lsp_implementations, opts)

		-- Object docs (hover from vscode)
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)

		-- Workspace definition (functionalities like go to definition will work for every file in the workspace)
		vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
		vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
		vim.keymap.set('n', '<leader>wl', function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, opts)

		-- Go to variable type
		vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)

		-- Rename variable
		vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)

		-- View quick actions the LSP suggests (like vscode quick actions)
		vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)

		-- View variable references
		--vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
		vim.keymap.set('n', '<leader>vr', require('telescope.builtin').lsp_references, opts)

		-- Format file
		vim.keymap.set('n', '<leader>f', function()
			vim.lsp.buf.format { async = true }
		end, opts)
		-- Idk what this is, maybe useful for C++ since I heard the term "signature" there once.
		-- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
	end,
})

require("lspconfig").lua_ls.setup {}
