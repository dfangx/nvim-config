local compe = require'compe'
local source = {}
function source.get_metadata(self)
    return {
        priority = 6,
        menu = '[Note Tags]',
        dup = 0
    }
end

function source.determine(self, context)
    return compe.helper.determine(context)
end

function source.complete(self, context)
    local cmd = [[rg -r '$1' --no-heading -Io -- "tags:(.*\w+)" ' .. g.notes_home .. ' | sed "s/ /\n/g" | sort -u | sed "/^$/d" || true]]
    local note_tags = fn.split(fn.system(cmd), '\n')
    context.callback({items = fn.map(note_tags, "{'word' : v:val}")})
end

compe.register_source('note_tags', source)
