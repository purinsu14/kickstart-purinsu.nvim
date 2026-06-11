vim.pack.add({
    { src = 'https://github.com/mfussenegger/nvim-dap' },
    { src = 'https://github.com/nvim-neotest/nvim-nio' },
    { src = 'https://github.com/rcarriga/nvim-dap-ui' },
    { src = 'https://github.com/theHamsta/nvim-dap-virtual-text' },
})

local dap = require('dap')
local dapui = require('dapui')

dapui.setup()
require('nvim-dap-virtual-text').setup({ enabled = true })

-- Auto open/close UI with debug session
dap.listeners.before.attach.dapui_config = function() dapui.open() end
dap.listeners.before.launch.dapui_config = function() dapui.open() end
dap.listeners.before.event_terminated.dapui_config = function() dapui.close() end
dap.listeners.before.event_exited.dapui_config = function() dapui.close() end

-- Keymaps
vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint, { desc = '[D]ebug: Toggle [B]reakpoint' })
vim.keymap.set('n', '<leader>dc', dap.continue,          { desc = '[D]ebug: [C]ontinue / Start' })
vim.keymap.set('n', '<leader>do', dap.step_over,         { desc = '[D]ebug: Step [O]ver' })
vim.keymap.set('n', '<leader>di', dap.step_into,         { desc = '[D]ebug: Step [I]nto' })
vim.keymap.set('n', '<leader>dO', dap.step_out,          { desc = '[D]ebug: Step [O]ut' })
vim.keymap.set('n', '<leader>dq', dap.terminate,         { desc = '[D]ebug: [Q]uit' })
vim.keymap.set('n', '<leader>du', dapui.toggle,          { desc = '[D]ebug: Toggle [U]I' })
vim.keymap.set('n', '<leader>de', dapui.eval,            { desc = '[D]ebug: [E]val expression' })
vim.keymap.set('v', '<leader>de', dapui.eval,            { desc = '[D]ebug: [E]val selection' })
