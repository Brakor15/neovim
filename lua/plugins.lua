return require('packer').startup(function(use)
	use 'neovim/nvim-lspconfig'
	use 'wbthomason/packer.nvim'
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	
	-- tmux
	use {
		'christoomey/vim-tmux-navigator',
		lazy = false,
	}

	-- File explorer
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, this but simply for file icons
		},
	}

	-- DAP for debugging
	use 'mfussenegger/nvim-dap'

	-- theme
	use 'rebelot/kanagawa.nvim'

	-- Treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({with_sync = true })
			ts_update()
		end,
	}

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Lualine
	use {
		'nvim-lualine/lualine.nvim',
		requires = { { 'nvim-tree/nvim-web-devicons', opt = true } }
	}

	-- Autopairs
	use {
		'windwp/nvim-autopairs',
		config = function() require("nvim-autopairs").setup {} end
	}

	-- Hrsh7th code completion
	
end)
