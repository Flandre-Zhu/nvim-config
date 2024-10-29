require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use 'doki-theme/doki-theme-vim'
	use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}
	use 'vim-airline/vim-airline'
	use 'lervag/vimtex'

	-- markdown preview
	use({
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
	})
	use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

	-- about LSP
	-- Managing & installing LSP servers, linters & formatters
	use("williamboman/mason.nvim") -- In charge of managing LSP servers, linters & formatters
	use("williamboman/mason-lspconfig.nvim") -- Bridges the gap between mason & lspconfig
	-- Configuring LSP servers
	use("neovim/nvim-lspconfig") -- Easily configure language servers
	use("hrsh7th/cmp-nvim-lsp") -- For autocompletion
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
		requires = {
			{ "nvim-tree/nvim-web-devicons" },
			{ "nvim-treesitter/nvim-treesitter" },
		},
	}) -- Enhanced LSP UIs
	use("jose-elias-alvarez/typescript.nvim") -- Additional functionality for TypeScript server (e.g., rename file & update imports)
	use("onsails/lspkind.nvim") -- VSCode-like icons for autocompletion
	-- autocompletion
	use("hrsh7th/nvim-cmp") -- completion plugin
	-- use("hrsh7th/cmp-buffer") -- source for text in buffer
	-- failed!
	use("hrsh7th/cmp-path") -- source for file system paths
	-- snippets
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	use("rafamadriz/friendly-snippets") -- useful snippetsuse("onsails/lspkind.nvim") -- VSCode-like icons for autocompletion
end)

require('cmp').setup({
  sources = {
    { name = 'buffer' },
  },
})
