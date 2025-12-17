require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'	
	
	use 'catppuccin/nvim'
	use 'doki-theme/doki-theme-vim'
	-- use 一些颜色主题

	use 'ryanoasis/vim-devicons'
	use { 'nvim-tree/nvim-tree.lua',requires = {'nvim-tree/nvim-web-devicons',},}
	-- nvim-tree: 在左侧显示一个文件树 (devicons 是需要的图标支持)

	use { 'nvim-treesitter/nvim-treesitter'}
	-- treesitter: 语法树解析

	use { 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
	-- 更好看的状态栏显示

	use {'neoclide/coc.nvim', branch = 'release'}
	-- 语法支持: coc.nvim

	use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end }
	-- 语法支持: 注释

	use 'sirver/ultisnips'
	-- 语法支持: 自动补全

	use({"iamcco/markdown-preview.nvim",run = function() vim.fn["mkdp#util#install"]() end,})
	use 'lervag/vimtex'
	-- markdown 与 latex 支持

end)
