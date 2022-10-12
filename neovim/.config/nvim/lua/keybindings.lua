vim.g.mapleader = "½"

--FILEHANDLING

vim.api.nvim_set_keymap('n', '<M-1>',
    "<cmd>lua require('telescope.builtin').find_files()<CR>",
    { noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<M-2>',
    "<cmd>lua require('telescope.builtin').buffers()<CR>",
    { noremap = true, silent = true }
)

--TESTING
vim.api.nvim_set_keymap('n', '<F10>',
    "<cmd>lua require('neotest').output.open()<CR>",
    { noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<F58>',
    "<cmd>lua require('neotest').summary.toggle()<CR>",
    { noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<F34>',
    "<cmd>lua require('neotest').run.run()<CR>",
    { noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<F22>',
    "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>",
    { noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<F46>',
    "<cmd>lua require('neotest').run.run('tests/')<CR>",
    { noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<F11>',
    "<cmd>lua require('coverage').load(true)<CR>",
		{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<F59>',
    "<cmd>lua require('coverage').summary()<CR>",
		{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<F35>',
    "<cmd>lua require('coverage').toggle()<CR>",
		{ noremap = true, silent = true }
)


--DEBUGGING
vim.api.nvim_set_keymap('n', '<C-b>',
    "<cmd>lua require('dap').toggle_breakpoint()<CR>",
    { noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<F57>',
    "<cmd>lua require('dapui').toggle()<CR>",
    { noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<F45>',
    "<cmd>lua require('dap').continue()<CR>",
    { noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<F33>',
    "<cmd>lua require('dap-python').test_method()<CR>",
    { noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<F8>',
    "<cmd>lua require('dap').step_over()<CR>",
    { noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<F32>',
    "<cmd>lua require('dap').step_into()<CR>",
    { noremap = true, silent = true }
)

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)

vim.keymap.set('n', '<C-J>', '<C-W><C-J>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-K>', '<C-W><C-K>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-L>', '<C-W><C-L>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-H>', '<C-W><C-H>', { noremap = true, silent = true })

vim.keymap.set("n", "<F12>", "<cmd>TroubleToggle document_diagnostics<cr>",
  {silent = true, noremap = true}
)

vim.keymap.set('n', '<F5>', "<cmd>lua require('github-notifications.menu').notifications()<CR>", { noremap = true, silent = true })

-- WHICH KEY
local wk = require("which-key")
wk.register({
    g = {
        name = "+Git",
        h = {
            name = "+Github",
            c = {
                name = "+Commits",
                c = { "<cmd>GHCloseCommit<cr>", "Close" },
                e = { "<cmd>GHExpandCommit<cr>", "Expand" },
                o = { "<cmd>GHOpenToCommit<cr>", "Open To" },
                p = { "<cmd>GHPopOutCommit<cr>", "Pop Out" },
                z = { "<cmd>GHCollapseCommit<cr>", "Collapse" },
            },
            i = {
                name = "+Issues",
                p = { "<cmd>GHPreviewIssue<cr>", "Preview" },
            },
            l = {
                name = "+Litee",
                t = { "<cmd>LTPanel<cr>", "Toggle Panel" },
            },
            r = {
                name = "+Review",
                b = { "<cmd>GHStartReview<cr>", "Begin" },
                c = { "<cmd>GHCloseReview<cr>", "Close" },
                d = { "<cmd>GHDeleteReview<cr>", "Delete" },
                e = { "<cmd>GHExpandReview<cr>", "Expand" },
                s = { "<cmd>GHSubmitReview<cr>", "Submit" },
                z = { "<cmd>GHCollapseReview<cr>", "Collapse" },
            },
            p = {
                name = "+Pull Request",
                c = { "<cmd>GHClosePR<cr>", "Close" },
                d = { "<cmd>GHPRDetails<cr>", "Details" },
                e = { "<cmd>GHExpandPR<cr>", "Expand" },
                o = { "<cmd>GHOpenPR<cr>", "Open" },
                p = { "<cmd>GHPopOutPR<cr>", "PopOut" },
                r = { "<cmd>GHRefreshPR<cr>", "Refresh" },
                t = { "<cmd>GHOpenToPR<cr>", "Open To" },
                z = { "<cmd>GHCollapsePR<cr>", "Collapse" },
            },
            t = {
                name = "+Threads",
                c = { "<cmd>GHCreateThread<cr>", "Create" },
                n = { "<cmd>GHNextThread<cr>", "Next" },
                t = { "<cmd>GHToggleThread<cr>", "Toggle" },
            },
        },
    },
}, { prefix = "<leader>" })
