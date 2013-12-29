towny = {}
local function make_registration()
local t = {}
local registerfunc = function(func) table.insert(t, func) end
return t, registerfunc
end

-- Town join event.
towny.registered_on_town_join, towny.register_on_town_join = make_registration()

-- Event auslösen (also wenn der spielre den button drückt oder so)
-- for _,func in ipairs(towny.registered_on_town_join) do
-- func()
-- end
 
-- Auf das Event reagieren (auch in anderen mods die towny in depends.txt haben)
-- towny.register_on_town_join(func)
