vim.api.nvim_set_keymap('n', '<M-1>',
    "<cmd>lua require('fzf-lua').files()<CR>",
    { noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<M-2>',
    "<cmd>lua require('fzf-lua').buffers()<CR>",
    { noremap = true, silent = true }
)

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
