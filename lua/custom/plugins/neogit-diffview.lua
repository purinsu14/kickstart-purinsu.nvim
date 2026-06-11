vim.pack.add({
    { src = 'https://github.com/NeogitOrg/neogit' },
    { src = 'https://github.com/sindrets/diffview.nvim' },
})

require('neogit').setup({
    integrations = {
        diffview = true,
        telescope = true,
    },
})

require('diffview').setup()

-- Keymaps
vim.keymap.set('n', '<leader>gg', '<cmd>Neogit<cr>',        { desc = '[G]it: Open Neo[g]it' })
vim.keymap.set('n', '<leader>gd', '<cmd>DiffviewOpen<cr>',  { desc = '[G]it: Open [D]iffview' })
vim.keymap.set('n', '<leader>gh', '<cmd>DiffviewFileHistory %<cr>', { desc = '[G]it: File [H]istory' })
vim.keymap.set('n', '<leader>gq', '<cmd>DiffviewClose<cr>', { desc = '[G]it: Close Diffview' })
