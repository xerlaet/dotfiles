-- Create splits
vim.keymap.set('n', '<Leader>th', ':split | terminal<CR>', { desc = 'Split terminal horizontally', silent = true })
vim.keymap.set('n', '<Leader>tv', ':vsplit | terminal<CR>', { desc = 'Split terminal vertically', silent = true })
vim.keymap.set('n', '<Leader>ph', ':split<CR>', { desc = 'Split horizontally', silent = true })
vim.keymap.set('n', '<Leader>pv', ':vsplit<CR>', { desc = 'Split vertically', silent = true })

-- Resize splits
vim.keymap.set('n', '<S-H>', '<cmd>vertical resize -2<CR>', {
    desc = 'Decrease Window Width (Narrower)',
    silent = true
})

vim.keymap.set('n', '<S-L>', '<cmd>vertical resize +2<CR>', {
    desc = 'Increase Window Width (Wider)',
    silent = true
})

vim.keymap.set('n', '<S-K>', '<cmd>resize +2<CR>', {
    desc = 'Increase Window Height (Taller)',
    silent = true
})

vim.keymap.set('n', '<S-J>', '<cmd>resize -2<CR>', {
    desc = 'Decrease Window Height (Shorter)',
    silent = true
})

-- Navigate splits with Alt + hjkl in Normal mode
vim.keymap.set('n', '<M-h>', '<C-w>h', { desc = 'Move to left window' })
vim.keymap.set('n', '<M-j>', '<C-w>j', { desc = 'Move to lower window' })
vim.keymap.set('n', '<M-k>', '<C-w>k', { desc = 'Move to upper window' })
vim.keymap.set('n', '<M-l>', '<C-w>l', { desc = 'Move to right window' })

-- Navigate splits with Alt + hjkl in Insert mode
vim.keymap.set('i', '<M-h>', '<C-o><C-w>h', { desc = 'Move to left window' })
vim.keymap.set('i', '<M-j>', '<C-o><C-w>j', { desc = 'Move to lower window' })
vim.keymap.set('i', '<M-k>', '<C-o><C-w>k', { desc = 'Move to upper window' })
vim.keymap.set('i', '<M-l>', '<C-o><C-w>l', { desc = 'Move to right window' })

-- Use <Esc><Esc> to exit Terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Toggle word wrap
vim.keymap.set('n', '<leader>w', ':set wrap!<CR>', {noremap = true, silent = true, desc = 'Toggle Word Wrap'})

