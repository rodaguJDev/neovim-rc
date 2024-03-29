# Neovim RC

Version control of my [neovim](https://neovim.io/) config, starting from scratch taking some plugins from [LazyVim](https://www.lazyvim.org/plugins).

# Recomendations

1. A [Nerd Font](https://www.nerdfonts.com)
2. A C compiler in PATH(gcc, cc or clang for example), if you're on Windows, use the x64 Native Tools Command Prompt from Visual Studio
   1. For more information, check out [this guide](https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support)
   2. For more information on the Native Tools Command Prompt, use [this guide](https://learn.microsoft.com/en-us/cpp/build/building-on-the-command-line?view=msvc-170)

# Customizations

Some of the customizations include:

- 4 space indenting
- Relative line numbers
- Better search highlight
- 8 Line scrolloff
- `SHIFT-J` and `SHIFT_K` move line up and down
- Scrolling with `CTRL-u` and `CTRL-d` keeps cursor in middle of the screen
- Much more, please see /lua/prefs.lua

# Keymaps

You can read about keybinds for some plugins [here](https://www.lazyvim.org/keymaps)

# Plugins

## LSP (WIP)

Language Servers for neovim, used by linters, formatters and nvim-cmp

1. [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
2. [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
3. [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
4. [folke/neoconf.nvim](https://github.com/folke/neoconf.nvim) (Install pending)
5. [folke/neodev.nvim](https://github.com/folke/neodev.nvim) (Install pending)

## Auto Completion (WIP)

1. [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
   1. [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
   2. [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
   3. [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
   4. [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
   5. [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
   6. [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
2. [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
   1. [saadparwaiz1/cmp-luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
3. [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)

## NoneLS

Linter and Formatter

1. [nvimtools/none-ls.nvim](https://github.com/nvimtools/none-ls.nvim)

## Editor

Plugins for coding productivity outside auto completion

1. [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
   1. Install [ripgrep](https://github.com/BurntSushi/ripgrep)
   2. [nvim-telescope/telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim)
2. [ThePrimeagen/harpoon](https://github.com/ThePrimeagen/harpoon/tree/harpoon2)
3. [folke/trouble.nvim](https://github.com/folke/trouble.nvim)
4. [echasnovski/mini.pairs](https://github.com/echasnovski/mini.pairs)
5. [echasnovski/mini.comment](https://github.com/echasnovski/mini.comment)
   1. [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
6. [echasnovski/mini.surround](https://github.com/echasnovski/mini.surround)
   1. **NOTE: This plugin is very useful, but it might take a little while to get used to**

## Treesitter

Better colors, very useful API and tools

1. [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
2. [nvim-treesitter/nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
3. [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)

## UI

Plugins for a fancier editor

1. [folke/noice.nvim](https://github.com/folke/noice.nvim)
   1. [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
2. [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)

## Colorscheme

Theme for neovim

1. [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
2. [catppuccin/nvim](https://github.com/catppuccin/nvim)
3. [rose-pine/neovim](https://github.com/rose-pine/neovim) _default_

## Not Included

Plugins that could be added some day but were not deemed necessary

1. [echasnovski/mini.indentscope](https://github.com/echasnovski/mini.indentscope)
2. [echasnovski/mini.ai](https://github.com/echasnovski/mini.ai)
3. [RRethy/vim-illuminate](https://github.com/RRethy/vim-illuminate)
4. [folke/which-key.nvim](https://github.com/folke/which-key.nvim)
5. [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
