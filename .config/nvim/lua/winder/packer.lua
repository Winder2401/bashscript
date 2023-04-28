--Installing Packer
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
---------------------------------------------------
--Plugins without config{{
    use('ThePrimeagen/harpoon')
    use('ThePrimeagen/vim-be-good')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
--}}
--Plugins with config{{
--FuzzyFinder
    use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  requires = { {'nvim-lua/plenary.nvim'} }
        }
 --ColorScheam&Theme
    use 'navarasu/onedark.nvim'
  require('onedark').load()
--TreeSitter    
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
--LSP and Dependencis{
    use {
	    'VonHeikemen/lsp-zero.nvim',
	    branch = 'v1.x',
	    requires = {
		    -- LSP Support
		    {'neovim/nvim-lspconfig'},             -- Required
		    {                                      -- Optional
		    'williamboman/mason.nvim',
		    run = function()
			    pcall(vim.cmd, 'MasonUpdate')
		    end,
	    },
	    {'williamboman/mason-lspconfig.nvim'}, -- Optional
	    -- Autocompletion
	    {'hrsh7th/nvim-cmp'},         -- Required
	    {'hrsh7th/cmp-nvim-lsp'},     -- Required
	    {'hrsh7th/cmp-buffer'},       -- Optional
	    {'hrsh7th/cmp-path'},         -- Optional
	    {'saadparwaiz1/cmp_luasnip'}, -- Optional
	    {'hrsh7th/cmp-nvim-lua'},     -- Optional
	    -- Snippets
	    {'L3MON4D3/LuaSnip'},             -- Required
	    {'rafamadriz/friendly-snippets'}, -- Optional
    }
}
--Statusbar
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
--}
--}}
end)
