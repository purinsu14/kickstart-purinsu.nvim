-- my nvim theme
-- "G" to change color scheme
vim.pack.add {
  { src = 'https://github.com/bluz71/vim-moonfly-colors', name = 'moonfly' },
  { src = 'https://github.com/whatyouhide/vim-gotham', name = 'gotham' },
  { src = 'https://github.com/nyoom-engineering/oxocarbon.nvim', name = 'oxocarbon' },
  { src = 'https://github.com/miikanissi/modus-themes.nvim', name = 'modus' },
}

-- add more configs
-- remove comments
--
-- moonfly
-- vim.g.moonflyCursorColor = true
-- vim.g.moonflyNormalPmenu = true
-- vim.o.pumborder = 'single'
-- vim.g.moonflyNormalFloat = true
-- vim.o.winborder = "single"
-- vim.g.moonflyTransparent = true
--
-- oxocarbon
-- vim.opt.background = "dark"
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
--
-- modus
-- Default options
require('modus-themes').setup {
  -- Two styles `modus_operandi` and `modus_vivendi`
  -- `auto` will automatically set style based on background set with vim.o.background
  style = 'auto',

  -- Theme comes in four variants `default`, `tinted`, `deuteranopia`, and `tritanopia`
  variants = {
    modus_operandi = 'default', -- Set variant for `modus_operandi` style
    modus_vivendi = 'default', -- Set variant for `modus_vivendi` style
  },
  transparent = true, -- Transparent background (as supported by the terminal)
  dim_inactive = false, -- "non-current" windows are dimmed
  hide_inactive_statusline = false, -- Hide statuslines on inactive windows. Works with the standard **StatusLine**, **LuaLine** and **mini.statusline**
  line_nr_column_background = true, -- Distinct background colors in line number column. `false` will disable background color and fallback to Normal background
  sign_column_background = true, -- Distinct background colors in sign column. `false` will disable background color and fallback to Normal background
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
  },

  --- You can override specific color groups to use other groups or a hex color
  --- Function will be called with a ColorScheme table
  --- Refer to `extras/lua/modus_operandi.lua` or `extras/lua/modus_vivendi.lua` for the ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- Function will be called with a Highlights and ColorScheme table
  --- Refer to `extras/lua/modus_operandi.lua` or `extras/lua/modus_vivendi.lua` for the Highlights and ColorScheme table
  ---@param highlights Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,
}

-- change color scheme
vim.cmd [[colorscheme modus]]
