require('keybind')
vim.cmd [[packadd packer.nvim]]
require('plugins')
require('plgconf')

vim.cmd.colorscheme("catppuccin-mocha")
vim.api.nvim_set_hl(0, "LineNr", {fg="#888888"})
vim.api.nvim_set_hl(0, "Normal", {bg="none"})
vim.api.nvim_set_hl(0, "NormalNC", {bg="none"})

vim.opt.hlsearch=false
vim.opt.termguicolors=true

vim.cmd('source ~/.config/nvim/vimrc') -- make sure highest priority
