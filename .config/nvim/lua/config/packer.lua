-- )This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use { "kyazdani42/nvim-web-devicons" }
  use {"christoomey/vim-tmux-navigator"}
  use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
  use({
    'Mofiqul/dracula.nvim',
    as = 'dracula',
    config = function()
      require("dracula").setup()
      vim.cmd('colorscheme dracula')
    end
  })
  -- use 'sbdchd/neoformat' -- Prettier plugi
  -- use 'prettier/vim-prettier'
  -- use({
  --   'prettier/vim-prettier',
  --   run = 'yarn install --frozen-lockfile --production',
  -- })
  -- use 'dense-analysis/ale'
  --  Plug 'tweekmonster/django-plus.vim', { 'for': ['python', 'htmldjango', 'html'] }
  -- use 'othree/html5.vim'
  -- use 'lumiliet/vim-twig'
  use('digitaltoad/vim-pug')
  -- use('mattn/emmet-vim')
  use('tpope/vim-commentary')
  use('alvan/vim-closetag')
  use {
	  "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use('ThePrimeagen/harpoon')
  use('AndrewRadev/tagalong.vim')
  use('mbbill/undotree')
  -- use({ 'neoclide/coc.nvim', branch = 'release' })
  use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
  use('nvim-treesitter/playground')
  use({
    'tweekmonster/django-plus.vim',
  })
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },
      { 'mattn/emmet-vim' },
      { 'dcampos/cmp-emmet-vim' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }
  -- use({
  -- 'jackieaskins/cmp-emmet',
  -- run = 'npm run release'
-- })
  -- use { "bmatcuk/stylelint-lsp" }
end)
