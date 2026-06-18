local ok, dap = pcall(require, 'dap')
if not ok then return end

-- codelldb is shared with Rust, defined once here
dap.adapters.codelldb = {
    type = 'server',
    port = '${port}',
    executable = {
        command = vim.fn.stdpath('data') .. '/mason/bin/codelldb',
        args = { '--port', '${port}' },
    },
}

dap.configurations.c = {
    {
        name = 'Launch',
        type = 'codelldb',
        request = 'launch',
        program = function()
            return vim.fn.input('Executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
    },
}

dap.configurations.cpp = dap.configurations.c
