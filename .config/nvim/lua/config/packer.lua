-- )This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
    use { "nvim-telescope/telescope-file-browser.nvim" }
    use { "kyazdani42/nvim-web-devicons" }
    use { "bmatcuk/stylelint-lsp" }
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use({'nvim-telescope/telescope-fzf-native.nvim', run = 'make'})
	use({
		'Mofiqul/dracula.nvim',
		as = 'dracula',
		config = function()
			require("dracula").setup()
			vim.cmd('colorscheme dracula')
		end
	})
	use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
	use('nvim-treesitter/playground')
    
	use('digitaltoad/vim-pug')
	use('mattn/emmet-vim')
	-- use({'neoclide/coc.nvim', branch = 'release'})
	use('tpope/vim-commentary')
	use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

end)
