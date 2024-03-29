return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup();
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "rust_analyzer", "tsserver", },
                handlers = {
                    function (server) -- default handler (optional)
                        require("lspconfig")[server].setup({});
                    end
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- Keybinds
            vim.keymap.set('n', 'gd', require("telescope.builtin").lsp_definitions, {});
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {});
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {});
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {});
        end
    }
}
