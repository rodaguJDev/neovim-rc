# Introduction
This file will explain each part of my [neovim](https://github.com/neovim/neovim) configuration (VimRC). This file should be included with the actual files (like a github repo)

# Dependencies
+ A C compiler in your path and libstdc++ installed [(Windows users please read this!)](https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support).
+ Node.JS (NPM required for Mason plugins)

# Plugins
**Note: [lazy.nvim](https://github.com/folke/lazy.nvim) is used as the plugin manager**<br>
Note2: Some plugins are disabled because I don't think I need them for now.
+ [telescope](https://github.com/nvim-telescope/telescope.nvim)
+ [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
+ [harpoon](https://github.com/ThePrimeagen/harpoon/tree/harpoon2)
+ [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
    - [mason](https://github.com/williamboman/mason.nvim)
    - [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim)
    - [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
    - [cmp-vim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
    - [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
+ [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
+ ~~[vim-fugitive](https://github.com/tpope/vim-fugitive)~~
+ ~~[lualine](https://github.com/nvim-lualine/lualine.nvim)~~
+ ~~[barbecue](https://github.com/utilyre/barbecue.nvim)~~
+ ~~[undotree](https://github.com/mbbill/undotree)~~
+ ~~[which-key](https://github.com/folke/which-key.nvim)~~

# Themes
+ **[Tokyo Night](https://github.com/folke/tokyonight.nvim)** (default)
+ [Catppuccin](https://github.com/catppuccin/nvim)
+ [Rosé Pine](https://github.com/rose-pine/neovim)

# Modifications
+ Relative Line Numbers
+ 4 space indent
+ No line wrapping
+ Cursor is never less than 8 lines from top of the screen (Scrolloff 8)
+ 80 column marker

# Keyboard Shortcuts
## Custom remaps
+ Move selection using `J` and `K`
+ `J` will not move the cursor to the end of the file
+ `Ctrl-D` and `Ctrl-U` does it's best to keep cursor in the middle
+ `<space>y` will copy line to the system clipboard (alias for "+y)
## LSP
+ `gd` - Go to definition
+ `gi` - Go to implementation
+ `K` - View hover with info about variable
+ `wa`, `wr`, `wl` - Workspace add, remove, list
+ `<leader>D` - Go to type definition of variable
+ `<leader>rn` - Rename Variable
+ `<leader>ca` - Code Action (LSP suggestions)
+ `<leader>vr` - Variable References
+ `<leader>f` - Format file

# Further Customization
If you'd like to add more plugins, you can check out this repo: <br>
https://github.com/rockerBOO/awesome-neovim#plugin-manager
