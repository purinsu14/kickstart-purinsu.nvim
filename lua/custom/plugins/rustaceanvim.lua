vim.pack.add({
    { src = 'https://github.com/mrcjkb/rustaceanvim' },
})

-- rustaceanvim manages rust-analyzer automatically.
vim.g.rustaceanvim = {
    tools = {},
    server = {
        on_attach = function(_, bufnr)
            -- Hover actions
            vim.keymap.set('n', '<leader>rh', function()
                vim.cmd.RustLsp('hover', 'actions')
            end, { buffer = bufnr, desc = '[R]ust: [H]over actions' })

            -- Expand macro under cursor
            vim.keymap.set('n', '<leader>rm', function()
                vim.cmd.RustLsp('expandMacro')
            end, { buffer = bufnr, desc = '[R]ust: Expand [M]acro' })

            -- Run nearest test
            vim.keymap.set('n', '<leader>rt', function()
                vim.cmd.RustLsp('runnables')
            end, { buffer = bufnr, desc = '[R]ust: [R]unnables' })
        end,
    },
    dap = {
        adapter = {
            type = 'server',
            port = '${port}',
            executable = {
                command = vim.fn.stdpath('data') .. '/mason/bin/codelldb',
                args = { '--port', '${port}' },
            },
        },
    },
}
