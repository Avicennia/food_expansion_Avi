
--[[
minetest.register_abm({
    label = "Fruit Pod Grow",
    nodenames = {"old_expansion:pod","old_expansion:pod2","old_expansion:pod3"},
    neighbors = {"air"},
    interval = 60,
    chance = 0.5,
	action = function(pos, node)
		local meta = minetest.get_meta(pos)
	  if(node.name == "old_expansion:pod")then
		minetest.set_node(pos,{name="old_expansion:pod2"})
		old_expansion.particles_leafdrop(pos)
	  elseif(node.name == "old_expansion:pod2")then
		minetest.set_node(pos,{name="old_expansion:pod3"})
		old_expansion.particles_leafdrop(pos)
	  elseif(node.name == "old_expansion:pod3")then
		minetest.set_node(pos,{name = "old_expansion:fruit_orange"})
		old_expansion.particles_leafdrop(pos)
	  else return 0
	  end

    end
})
]]


--old_expansion.schems.schemATICS

local n1 = { name = "air"}
local n2 = { name = "old_expansion:pod"}
local n3 = { name = "old_expansion:leaves1" }
local n4 = { name = "old_expansion:log_paperbark"}

old_expansion.schems.schem_poplar = {
	size = {
		y = 8,
		x = 5,
		z = 5
	}
,
	data = {
n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
n2, n1, n1, n1, n2, n3, n2, n1, n1, n3, n3, n3, n1, n1, n1, n3, n1, 
n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
n1, n2, n1, n1, n1, n2, n3, n2, n1, n2, n3, n3, n3, n2, n3, n3, n3, 
n3, n3, n1, n3, n3, n3, n1, n1, n1, n3, n1, n1, n1, n1, n4, n1, n1, 
n1, n1, n4, n1, n1, n1, n2, n4, n2, n1, n2, n3, n4, n3, n2, n3, n3, 
n3, n3, n3, n3, n3, n3, n3, n3, n3, n3, n3, n3, n3, n1, n3, n1, n3, 
n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n2, n1, n1, n1, 
n2, n3, n2, n1, n2, n3, n3, n3, n2, n3, n3, n3, n3, n3, n1, n3, n3, 
n3, n1, n1, n1, n3, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
n1, n1, n1, n1, n1, n1, n1, n2, n1, n1, n1, n2, n3, n2, n1, n1, n3, 
n3, n3, n1, n1, n1, n3, n1, n1, n1, n1, n1, n1, n1, 

}
}
minetest.register_schematic(old_expansion.schems.schem_poplar)



local n1 = { name = "air", prob = 0 }
local n2 = { name = "old_expansion:pod" }
local n3 = { name = "old_expansion:leaves1" }
local n4 = { name = "old_expansion:log_paperbark" }
local n5 = { name = "old_expansion:log_paperbark", param2 = 3 }
local n6 = { name = "old_expansion:log_paperbark", param2 = 1 }
local n7 = { name = "old_expansion:log_paperbark", param2 = 2 }

old_expansion.schems.schem_trop = {
	yslice_prob = {
		
	},
	size = {
		y = 8,
		x = 5,
		z = 5
	}
,
	data = {
n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n2, 
n1, n2, n1, n1, n3, n2, n3, n1, n1, n1, n3, n3, n1, n1, n1, n1, n1, 
n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n2, 
n2, n1, n1, n1, n3, n3, n1, n1, n1, n1, n3, n4, n2, n1, n1, n3, n3, 
n3, n1, n1, n1, n2, n1, n1, n1, n1, n3, n1, n1, n1, n1, n5, n1, n1, 
n1, n1, n5, n1, n1, n1, n1, n5, n1, n1, n2, n6, n5, n2, n1, n3, n3, 
n7, n3, n1, n1, n3, n3, n3, n1, n1, n2, n3, n2, n1, n1, n3, n3, n3, 
n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n2, n2, n1, n1, n1, n3, 
n3, n1, n2, n1, n3, n3, n7, n3, n1, n1, n3, n3, n3, n1, n1, n1, n2, 
n1, n1, n1, n1, n3, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
n1, n1, n1, n1, n1, n1, n2, n1, n2, n1, n1, n3, n2, n3, n1, n1, n3, 
n3, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
}
}
minetest.register_schematic(old_expansion.schems.schem_trop)

local n1 = { name = "air", prob = 0 }
local n2 = { name = "old_expansion:pod" }
local n3 = { name = "old_expansion:leaves1" }
local n4 = { name = "old_expansion:log_paperbark", param2 = 3 }
local n5 = { name = "old_expansion:log_paperbark", param2 = 2 }

old_expansion.schems.schem_conif = {
	yslice_prob = {
		
	},
	size = {
		y = 8,
		x = 5,
		z = 5
	}
,
	data = {
n1, n1, n1, n1, n1, n1, n1, n2, n1, n1, n1, n1, n3, n1, n1, n1, n1, 
n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n2, n2, n2, n1, n1, 
n3, n3, n3, n1, n1, n3, n3, n3, n1, n1, n1, n3, n1, n1, n1, n1, n3, 
n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n4, n1, n1, 
n2, n2, n4, n2, n2, n3, n3, n4, n3, n3, n1, n3, n4, n3, n1, n1, n3, 
n5, n3, n1, n1, n3, n3, n3, n1, n1, n1, n3, n1, n1, n1, n1, n3, n1, 
n1, n1, n1, n1, n1, n1, n1, n2, n2, n2, n1, n1, n3, n3, n3, n1, n1, 
n3, n3, n3, n1, n1, n1, n3, n1, n1, n1, n1, n3, n1, n1, n1, n1, n1, 
n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n2, n1, n1, 
n1, n1, n3, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
	}
}
minetest.register_schematic(old_expansion.schems.schem_conif)


local n1 = { name = "air", prob = 0 }
local n2 = { name = "old_expansion:pod" }
local n3 = { name = "old_expansion:leaves1" }
local n4 = { name = "old_expansion:log_paperbark" }
local n5 = { name = "old_expansion:log_paperbark", param2 = 3 }
local n6 = { name = "old_expansion:log_paperbark", param2 = 1 }
local n7 = { name = "old_expansion:log_paperbark", param2 = 2 }

old_expansion.schems.schem_will = {
	yslice_prob = {
		
	},
	size = {
		y = 8,
		x = 5,
		z = 5
	}
,
	data = {
n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n2, 
n2, n2, n1, n1, n3, n3, n3, n1, n1, n1, n3, n1, n1, n1, n1, n1, n1, 
n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n2, n2, n1, n1, n1, n3, 
n3, n2, n1, n1, n1, n2, n3, n2, n2, n1, n3, n4, n3, n3, n1, n2, n3, 
n3, n1, n1, n3, n3, n1, n1, n1, n1, n3, n1, n1, n1, n1, n5, n1, n1, 
n1, n1, n5, n1, n1, n6, n6, n5, n1, n1, n3, n3, n5, n1, n1, n1, n3, 
n7, n4, n5, n2, n3, n7, n3, n3, n3, n3, n3, n2, n1, n1, n3, n3, n3, 
n1, n1, n1, n1, n1, n1, n2, n2, n1, n1, n1, n3, n3, n2, n1, n1, n1, 
n1, n3, n2, n2, n1, n2, n1, n3, n3, n1, n3, n7, n3, n1, n1, n1, n3, 
n3, n1, n1, n1, n3, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n2, n1, n2, n1, n1, n3, 
n7, n3, n1, n1, n1, n3, n1, n1, n1, n1, n1, n1, n1, 

}
}
minetest.register_schematic(old_expansion.schems.schem_will)
