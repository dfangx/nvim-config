local source = {}

source.new = function()
    return setmetatable({}, { __index = source })
end

function source:complete(params, callback)
    items = {}
    local file = fn.expand(g.notes_home .. '/tags')
    for line in io.lines(file) do
        table.insert(items, { label = line })
    end
    callback(items)
end

return source;
