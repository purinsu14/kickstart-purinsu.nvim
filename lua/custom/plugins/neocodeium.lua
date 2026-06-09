-- Neocodeium Completion Plugin
vim.pack.add({
  { src = 'https://github.com/monkoose/neocodeium' }
})

require('neocodeium').setup({
    enabled = true,
})

-- keymaps
vim.keymap.set("i", "<A-f>", function()
    require("neocodeium").accept()
end, { desc = "NeoCodeium: Accept full suggestion" })

vim.keymap.set("i", "<A-w>", function()
    require("neocodeium").accept_word()
end, { desc = "NeoCodeium: Accept next word" })

vim.keymap.set("i", "<A-a>", function()
    require("neocodeium").accept_line()
end, { desc = "NeoCodeium: Accept next line" })

vim.keymap.set("i", "<A-e>", function()
    require("neocodeium").cycle_or_complete()
end, { desc = "NeoCodeium: Cycle suggestions forward" })

vim.keymap.set("i", "<A-r>", function()
    require("neocodeium").cycle_or_complete(-1)
end, { desc = "NeoCodeium: Cycle suggestions backward" })

vim.keymap.set("i", "<A-c>", function()
    require("neocodeium").clear()
end, { desc = "NeoCodeium: Clear suggestion" })
