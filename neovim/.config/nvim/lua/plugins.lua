return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Visuals
  use 'shaunsingh/nord.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- File Handling
  use { 'ibhagwan/fzf-lua',
    requires = { 'kyazdani42/nvim-web-devicons' }
  }

  -- Completion
  use 'github/copilot.vim'
  use 'hrsh7th/nvim-cmp'
  use 'L3MON4D3/LuaSnip'
  use {
    "zbirenbaum/copilot.lua",
    event = {"VimEnter"},
    config = function()
      vim.defer_fn(function()
	      require("copilot").setup()
      end, 100)
    end,
  }
  use {
    "zbirenbaum/copilot-cmp",
    module = "copilot_cmp",
  }
  use 'hrsh7th/cmp-nvim-lsp'

  -- Python
  use 'neovim/nvim-lspconfig'
end)
