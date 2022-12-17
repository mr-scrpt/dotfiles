
local awful         = require("awful") --Everything related to window managment
local keyboard_layout = require("keyboard_layout")

local kbdcfg = keyboard_layout.kbdcfg({type = "tui"})

kbdcfg.add_primary_layout("English", "US", "us")
kbdcfg.add_primary_layout("Русский", "RU", "ru")

kbdcfg.bind()

-- Mouse bindings
kbdcfg.widget:buttons(
 awful.util.table.join(awful.button({ }, 1, function () kbdcfg.switch_next() end),
                       awful.button({ }, 3, function () kbdcfg.menu:toggle() end))
)

globalkeys = awful.util.table.join(globalkeys,
    -- Shift-Alt to change keyboard layout
    awful.key({modkey}, "space", function () kbdcfg.switch_next() end)
    -- Alt-Shift to change keyboard layout
    -- awful.key({"Mod1"}, "Shift_L", function () kbdcfg.switch_next() end)
)

return kbdcfg
