local ok, dap = pcall(require, 'dap')
if not ok then return end

dap.adapters.python = {
    type = 'executable',
    command = vim.fn.stdpath('data') .. '/mason/bin/debugpy-adapter',
}

dap.configurations.python = {
    {
        name = 'Launch file',
        type = 'python',
        request = 'launch',
        program = '${file}',
        pythonPath = function()
            -- Use venv if present, otherwise fall back to system python
            local venv = vim.fn.getcwd() .. '/.venv/bin/python'
            if vim.fn.executable(venv) == 1 then
                return venv
            end
            return vim.fn.exepath('python3') or 'python3'
        end,
    },
}
