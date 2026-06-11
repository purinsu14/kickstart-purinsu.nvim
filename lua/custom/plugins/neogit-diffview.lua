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
