-- Discord Rich Presence for Neovim
vim.pack.add({
  { src = 'https://github.com/andweeb/presence.nvim' }
})

-- Optional configuration 
require('presence').setup({
	enable_line_numbers = true,
	auto_update = true,
	editing_text = "Editing %s",
	file_explorer_text  = "Browsing %s",
})
