require("lazy").setup({
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			vim.cmd('colorscheme tokyonight-night')
		end
	},
	{
		'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate',
	},
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" }
	},
    {"neovim/nvim-lspconfig"},
	{"williamboman/mason.nvim"},
	{"williamboman/mason-lspconfig.nvim"},
    {"hrsh7th/nvim-cmp"},
    {"hrsh7th/cmp-nvim-lsp"},
    {"L3MON4D3/LuaSnip"},
    {"saadparwaiz1/cmp_luasnip"},
    {"rafamadriz/friendly-snippets"},
    {"nvim-tree/nvim-tree.lua"}
})
