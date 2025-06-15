require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use 'doki-theme/doki-theme-vim'
	use {'nvim-tree/nvim-tree.lua',requires = {'nvim-tree/nvim-web-devicons',},}
	use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
	use 'ryanoasis/vim-devicons'
	use 'sirver/ultisnips'
	-- markdown preview
	use({"iamcco/markdown-preview.nvim",run = function() vim.fn["mkdp#util#install"]() end,})
	-- latex
	use 'lervag/vimtex'
	-- coc.nvim for lsp
	use {'neoclide/coc.nvim', branch = 'release'}
end)
