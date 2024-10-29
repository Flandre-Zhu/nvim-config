vim.cmd [[packadd packer.nvim]]
vim.cmd('source ~/.config/nvim/vimrc')

require('keybind')

require('plugins')
require('plugin-config.nvim-tree')
require('plugin-config.vim-tex')
vim.cmd('source ~/.config/nvim/lua/plugin-config/markdownpre.vim')

require('mason').setup()
require('mason-lspconfig').setup()
require('lsp.mason')
require('lsp.handlers').setup()
require("lsp.null-ls")
require('nvim-cmp')

vim.opt.hlsearch=false
