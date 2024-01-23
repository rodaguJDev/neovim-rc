# Introduction
This file will explain each part of my [neovim](https://github.com/neovim/neovim) configuration (VimRC). This file should be included with the actual files (like a github repo)

# Dependencies
+ **W.I.P**

# Plugins
**Note: [lazy.nvim](https://github.com/folke/lazy.nvim) is used as the plugin manager**
+ [Telescope](https://github.com/nvim-telescope/telescope.nvim)
+ [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
+ [Harpoon](https://github.com/ThePrimeagen/harpoon/tree/harpoon2)
+ [Mason](https://github.com/williamboman/mason.nvim)
  - [Mason LSP-config](https://github.com/williamboman/mason-lspconfig.nvim)
  - [Nvim LSP-config](https://github.com/neovim/nvim-lspconfig)
+ ~~[Nvim Tree](https://github.com/nvim-tree/nvim-tree.lua)~~
+ ~~[Lualine](https://github.com/nvim-lualine/lualine.nvim)~~
+ ~~[Barbecue](https://github.com/utilyre/barbecue.nvim)~~

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

# Language Servers
+ `lua_ls`

# Future Plans
1. Learn how to install [nvim_cmp](https://github.com/hrsh7th/nvim-cmp)
  - The [LSP Zero](https://github.com/VonHeikemen/lsp-zero.nvim) repo also has a few details on how nvim-cmp works

# Further Customization
If you'd like to add more plugins, you can check out this repo: <br>
https://github.com/rockerBOO/awesome-neovim#plugin-manager
