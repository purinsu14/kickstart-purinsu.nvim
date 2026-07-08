-- rustaceanvim.lua
vim.pack.add {
  {
    src = 'https://github.com/mrcjkb/rustaceanvim',
    -- To avoid being surprised by breaking changes,
    -- I recommend you set a version range
    version = vim.version.range '^9',
  },
}

vim.g.rustaceanvim = {
  tools = {},
  server = {
    on_attach = function(_, bufnr)
      vim.keymap.set('n', '<leader>rh', function() vim.cmd.RustLsp('hover', 'actions') end, { buffer = bufnr, desc = '[R]ust: [H]over actions' })
      vim.keymap.set('n', '<leader>rm', function() vim.cmd.RustLsp 'expandMacro' end, { buffer = bufnr, desc = '[R]ust: Expand [M]acro' })
      vim.keymap.set('n', '<leader>rt', function() vim.cmd.RustLsp 'runnables' end, { buffer = bufnr, desc = '[R]ust: [R]unnables' })
    end,
  },
  dap = {
    adapter = {
      type = 'server',
      port = '${port}',
      executable = {
        command = vim.fn.stdpath 'data' .. '/mason/bin/codelldb',
        args = { '--port', '${port}' },
      },
    },
  },
}
