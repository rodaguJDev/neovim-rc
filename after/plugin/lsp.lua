-- KEYBINDS
vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('UserLspConfig', {}),
	callback = function(ev)
		vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

		local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)

		vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
		vim.keymap.set('n', 'gd', require('telescope.builtin').lsp_definitions, opts)
		vim.keymap.set('n', 'gi', require('telescope.builtin').lsp_implementations, opts)
        vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, opts)
        vim.keymap.set('n', 'gtd', vim.lsp.buf.type_definition, opts)

		vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
		vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
		vim.keymap.set('n', '<leader>wl', function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, opts)

        vim.keymap.set({ 'n', 'v' }, '<F4>', vim.lsp.buf.code_action, opts)
		vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, opts)
        vim.keymap.set('n', '<F3>', function()
            vim.lsp.buf.format { async = true }
        end, opts)

		vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
	end,
})

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities();
local default_lsp = function(server)
    require('lspconfig')[server].setup({
        capabilities = lsp_capabilities,
    })
end

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls" },
    handlers = {
        default_lsp
    }
})

local cmp = require('cmp');
cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end
    },
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' }, -- For luasnip users.
    }, {
        { name = 'buffer' },
    }),
    mapping = cmp.mapping.preset.insert({
        -- Enter key confirms completion item
        ['<CR>'] = cmp.mapping.confirm({select = false}),

        -- Ctrl + space triggers completion menu
        ['<C-Space>'] = cmp.mapping.complete(),
    }),

})
