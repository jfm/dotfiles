local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

require'lspconfig'.pyright.setup{
	capabilities = capabilities,
}

require('dap-python').setup('~/.local/share/virtualenvs/debugpy/bin/python')
require('dap-python').test_runner = 'pytest'

require("neotest").setup({
	output = {
    enabled = true,
    open_on_run = "yes",
  },
  adapters = {
    require("neotest-python")({
      dap = { justMyCode = false },
			args = {"--cov=src", "--cov-report=term-missing"},
			runner = 'pytest',
    }),
		require("neotest-plenary"),
  },
})

require("dapui").setup({
layouts = {
    {
      elements = {
      -- Elements can be strings or table with id and size keys.
        { id = "scopes", size = 0.25 },
        "breakpoints",
        "watches",
      },
      size = 40, -- 40 columns
      position = "right",
    }
	},
})
require("nvim-dap-virtual-text").setup()
require("coverage").setup({
	commands = true, -- create commands
	highlights = {
		-- customize highlight groups created by the plugin
		covered = { fg = "#C3E88D" },   -- supports style, fg, bg, sp (see :h highlight-gui)
		uncovered = { fg = "#F07178" },
	},
	signs = {
		-- use your own highlight groups or text markers
		covered = { hl = "CoverageCovered", text = "▎" },
		uncovered = { hl = "CoverageUncovered", text = "▎" },
	},
	summary = {
		-- customize the summary pop-up
		min_coverage = 80.0,      -- minimum coverage threshold (used for highlighting)
	},
	lang = {
		-- customize language specific settings
	},
})
