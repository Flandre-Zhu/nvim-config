require('keybind')

vim.cmd [[packadd packer.nvim]]
require('plugins')
require('plgconf')

-- require("lsp")

vim.opt.hlsearch=false
vim.opt.termguicolors=true

vim.cmd('source ~/.config/nvim/vimrc') -- make sure highest priority
