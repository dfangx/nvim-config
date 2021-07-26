function createNote(dir)
   vim.cmd('e ' .. vim.g.notes_home .. '/' .. dir .. '/' .. vim.fn.strftime("%Y%m%d%H%M%S") .. '.md')  
end

function searchNotes(q, fs)
    local cmd = 'rg --no-heading --smart-case --line-number --column --color=always -- %s ' .. vim.g.notes_home .. ' || true'
    let spec = { 
        options = {
            '--multi',
            '--ansi',
            '--query', q,
            '--delimiter', ':',
            '--prompt', 'Search Notes> ',
            '--preview-window', 'up,60%,+{2}+3/3'
        },
    }

    local initial = printf(cmd, shellescape(q))
end
