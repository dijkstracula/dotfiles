-- Bootstrapping for packer.nvim: https://github.com/wbthomason/packer.nvim#bootstrapping
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()


return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Make things purdy
  use { "ellisonleao/gruvbox.nvim" }
  use {'nvim-lualine/lualine.nvim' }

  -- Languages and LSPs
  use { 'dijkstracula/vim-ivy' }
  use 'neovim/nvim-lspconfig' 
  use 'simrat39/rust-tools.nvim'
  use 'williamboman/mason.nvim'    
  use 'williamboman/mason-lspconfig.nvim'
  use 'runoshun/vim-alloy'

  -- Completion framework:
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-vsnip'                             
  use 'hrsh7th/cmp-path'                              
  use 'hrsh7th/cmp-buffer'                            
  use 'hrsh7th/vim-vsnip'

  use 'nvim-treesitter/nvim-treesitter'

  -- Fuzzy file searching
  use { 'nvim-telescope/telescope.nvim', 
    tag = '0.1.5',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Unit tests
  use 'klen/nvim-test'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

