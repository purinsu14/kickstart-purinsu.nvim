-- crates.nvim
vim.pack.add({
  { src = 'https://github.com/saecki/crates.nvim' }
})

require('crates').setup({
  lsp = {
    enabled = true,
    actions = true,
    completion = true,
    hover = true,
  },
})
