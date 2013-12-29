-- Towny for Minetest coded by Evolykane and John_minetest
-- 
-- Translations:
-- - No Modul for Translations yet.
-- 
-- Liszence: by-nc-sa
   Modname = "Towny"
-- Description = "This Mod adds towns, payers can join and nations towns can join."
   Version = "0.1"
-- Languages = "english"

-- Define Events
dofile(minetest.get_modpath("towny").."/main/events.lua")

-- Show Header in the console
print("MOD BY: EVOLYKANE and JOHN_MINETEST")
print(Modname.." Version "..Version.." wurde geladen!"


-- Load the config
dofile(minetest.get_modpath("towny").."/config/config.yml")

-- Giving aliases for the config Data
activatet = activate_towns
townp = activate_protection_handling
townpvp = activate_pvp_protection_for_players_in_the_same_town
activaten = activate_nations
nationpvp = activate_pvp_protection_for_players_in_the_same_nation
activatenwar = activate_war_handling_between_nations

-- TODO: Load translations

-- Define the Town Part
if activatet = true then
	dofile(minetest.get_modpath("towny").."/towns/main.lua") -- Do the Town Code
end

-- Define the Nation Part
if activatet = true and activaten = true then
	dofile(minetest.get_modpath("towny").."/nations/main.lua") -- Do the Nation Code
end

-- Define the Nation War Part
if activatet = true and activaten = true and activatenwar then
	dofile(minetest.get_modpath("towny").."/nationswar/main.lua") -- Do the Nation Code
end
