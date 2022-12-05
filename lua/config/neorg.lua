require('neorg').setup {
    load = {
        ["core.defaults"] = {},
        ["core.norg.concealer"] = {},
        ["core.norg.completion"] = {
            config = {
                engine = "nvim-cmp"
            }
        },
        ["core.keybinds"] = {
            config = {
                default_keybinds = true
            }
        },
        ["core.norg.dirman"] = {
            config = {
                workspaces = {
                    gtd = "~/gtd"
                }
            }
        },
        ["core.gtd.base"] = {
            config = {
                workspace = "gtd"
            }
        }
    },
--     hook = function()
--         local neorg_leader = "<Leader>"
--         local neorg_callbacks = require('neorg.callbacks')
--         neorg_callbacks.on_event("core.keybinds.events.enable_keybinds", function(_, keybinds)
--             keybinds.map_event_to_mode("norg", {
--                 n = {
--                 { "gi", "core.gtd.base.add_to_inbox" },
--             },
--         }, { silent = true, noremap = true })
-- 
--     end)
-- end
}
