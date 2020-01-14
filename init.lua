-- VARIABLE INITIALIZATION
local thismod = minetest.get_current_modname()

local modpath = minetest.get_modpath(thismod)

old_expansion = {
    growthSources = {},
    schems = {}
}
old_expansion.growthSources.names = {"default:dirt", "default:dirt_with_grass", "default:water_source", "default:water_flowing", "default:ice"}
old_expansion.growthSources.values = {4, 2, 4, 3, -6,}





-- FILES TO RUN
dofile(modpath.."/support.lua")
dofile(modpath.."/nodereg.lua")
dofile(modpath.."/itemreg.lua")
dofile(modpath.."/framework.lua")
--dofile(modpath.."/depends.txt")



