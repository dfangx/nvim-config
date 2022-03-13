dap = require('dap')

dap.adapters.lldb = {
    type = 'executable',
    command = '/usr/bin/lldb-vscode', -- adjust as needed
    name = "lldb"
}

dap.configurations.cpp = {
    {
        name = "Launch",
        type = "lldb",
        request = "launch",
        program = function()
            return fn.input('Path to executable: ', fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        args = {},
        runInTerminal = false,
    },
    {
        -- If you get an "Operation not permitted" error using this, try disabling YAMA:
        --  echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
        name = "Attach to process",
        type = 'lldb',
        request = 'attach',
        pid = require('dap.utils').pick_process,
        args = {},
    },
}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
dap.configurations.zig = dap.configurations.cpp

local opts = { silent = true }
nnoremap('<leader>db', '<cmd>lua dap.toggle_breakpoint()<cr>', opts)
nnoremap('<leader>dc', '<cmd>lua dap.continue()<cr>', opts)
nnoremap('<leader>ds', '<cmd>lua dap.step_over()<cr>', opts)
nnoremap('<leader>dS', '<cmd>lua dap.step_into()<cr>', opts)
nnoremap('<leader>dr', '<cmd>lua dap.repl.open()<cr>', opts)
nnoremap('<leader>dk', '<cmd>lua dap.up()<cr>', opts)
nnoremap('<leader>dj', '<cmd>lua dap.down()<cr>', opts)
nnoremap('<leader>di', '<cmd>lua require"dap.ui.widgets".hover()<cr>', opts)
