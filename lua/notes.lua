local fzf_nvim = require'fzf'
function createNote(dir)
    vim.cmd('e ' .. vim.g.notes_home .. '/' .. dir .. '/' .. vim.fn.strftime("%Y%m%d%H%M%S") .. '.md')  
end

function searchNotes(q)
    fzf.grep({
        rg_opts = '--no-heading --smart-case --line-number --column --color=always',
        cwd = fn.expand(vim.g.notes_home),
        search = q,
        input_prompt = 'Search Notes> ',
    })
end

tags = ''
files = ''
function searchNotesByTag(q)
    coroutine.wrap(function()
        local results = fzf_nvim.fzf('cat ' .. g.notes_home .. '/tags')
        if results then
            tags = results[1]
            for k, t in ipairs(results) do
                if k ~= 1 then
                    tags = regex .. '|' .. t
                end
            end
            files = fn.system('rg -t md --no-heading --smart-case --line-number --column --color=never -lw "' .. tags .. '" ' .. g.notes_home)
            files = string.gsub(files, '\n', ' ')
            fzf.live_grep({
                rg_opts = '--no-heading --smart-case --line-number --column --color=always -H',

                filename = files,
                prompt = 'Search Notes> ',
            })
        end
    end
    ) ()
end
