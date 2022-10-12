return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Visuals
  use 'kyazdani42/nvim-web-devicons'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
	use 'cocopon/iceberg.vim'
	use {
  	"folke/trouble.nvim",
  	requires = "kyazdani42/nvim-web-devicons",
  	config = function()
    	require("trouble").setup {
      	-- your configuration comes here
      	-- or leave it empty to use the default settings
      	-- refer to the configuration section below
    	}
  	end
  }
	use {
  	'rlch/github-notifications.nvim',
  	config = [[require('config.github-notifications')]],
  	requires = {
    	'nvim-lua/plenary.nvim',
    	'nvim-telescope/telescope.nvim',
  	},
	}
	
  -- Handling
	use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.0',
  	requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'ggandor/leap.nvim'
	use {
    'ldelossa/gh.nvim',
    requires = { { 'ldelossa/litee.nvim' } }
  }
	use {
  	"folke/which-key.nvim",
	  config = function()
  	  require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    	}
  	end
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

  -- Development
  use 'neovim/nvim-lspconfig'
	use 'mfussenegger/nvim-dap'
	use 'mfussenegger/nvim-dap-python'
	use 'rcarriga/nvim-dap-ui'
	use 'theHamsta/nvim-dap-virtual-text'
  use {
    "nvim-neotest/neotest",
    requires = {
			"nvim-neotest/neotest-python",
			"nvim-neotest/neotest-plenary",
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim"
    }
  }
	use({
	 	"andythigpen/nvim-coverage",
 		requires = "nvim-lua/plenary.nvim",
--		config = function()
--    	require("user.coverage")
--  	end,
	})
end)
