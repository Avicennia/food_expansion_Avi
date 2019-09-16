
minetest.register_abm({
    label = "Cherry Sapling Sprout",
    nodenames = {"group:food_expansion_sapling"},
    neighbors = {"air"},
    interval = 240,
    chance = 0.7,
    action = function(pos, node)
				local pos = {x=pos.x-2,y=pos.y,z=pos.z-2}
				minetest.remove_node(pos)
		minetest.place_schematic(pos,food_expansion.treeschem_randomizer(),0,_,true)
    end
})
minetest.register_abm({
    label = "Fruit Pod Grow",
    nodenames = {"food_expansion:pod","food_expansion:pod2","food_expansion:pod3"},
    neighbors = {"air"},
    interval = 325,
    chance = 0.5,
	action = function(pos, node)
		local meta = minetest.get_meta(pos)
	  if(node.name == "food_expansion:pod")then
		minetest.set_node(pos,{name="food_expansion:pod2"})
		food_expansion.particles_leafdrop(pos)
	  elseif(node.name == "food_expansion:pod2")then
		minetest.set_node(pos,{name="food_expansion:pod3"})
		food_expansion.particles_leafdrop(pos)
	  elseif(node.name == "food_expansion:pod3")then
		minetest.set_node(pos,{name = "food_expansion:fruit_orange"})
		food_expansion.particles_leafdrop(pos)
	  else return 0
	  end

    end
})



--SCHEMATICS

schem_Tree_ac = {
	yslice_prob = {
		
	},
	size = {
		y = 7,
		x = 6,
		z = 6
	}
,
	data = {
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, 
{name = "food_expansion:leaves1"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, 
{name = "air"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:log_paperbark"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:log_paperbark"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:log_paperbark"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:log_paperbark"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, 
{name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "food_expansion:pod"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "air"}, 
{name = "air"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:pod"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "air"}, 

}
}


-- Tree Variant 1
schem_Treev1_ac = {
	yslice_prob = {
		
	},
	size = {
		y = 7,
		x = 5,
		z = 5
	}
,
	data = {
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves1"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:log_paperbark"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:log_paperbark"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:log_paperbark"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:log_paperbark"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:log_paperbark"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 

}
}
-- Tree Variant 2
schem_Treev2_ac = {
	yslice_prob = {
		
	},
	size = {
		y = 7,
		x = 5,
		z = 5
	}
,
	data = {
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, 
{name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:log_paperbark"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:log_paperbark"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:log_paperbark"}, {name = "food_expansion:pod"}, {name = "air"}, 
{name = "food_expansion:pod"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:log_paperbark"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, 
{name = "air"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 

}
}
-- Tree Variant 3
schem_Treev3_ac = {
	yslice_prob = {
		
	},
	size = {
		y = 7,
		x = 5,
		z = 5
	}
,
	data = {
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, 
{name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:log_paperbark"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:log_paperbark"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:log_paperbark"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, 
{name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:log_paperbark"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, 
{name = "air"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves1"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 

}
}
schem_Treev1_as = {
	yslice_prob = {
		
	},
	size = {
		y = 7,
		x = 5,
		z = 5
	}
,
	data = {
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves3"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "air"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:log_paperbark"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:log_paperbark"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:log_paperbark"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:log_paperbark"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:log_paperbark"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves3"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves3"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "air"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves3"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 

}
}
schem_Treev2_as = {
	yslice_prob = {
		
	},
	size = {
		y = 7,
		x = 5,
		z = 5
	}
,
	data = {
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves3"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, 
{name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:log_paperbark"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:log_paperbark"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:log_paperbark"}, {name = "food_expansion:pod"}, {name = "air"}, 
{name = "food_expansion:pod"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:log_paperbark"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "air"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "food_expansion:leaves3"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, 
{name = "air"}, {name = "air"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves3"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 

}
}
schem_Treev3_as = {
	yslice_prob = {
		
	},
	size = {
		y = 7,
		x = 5,
		z = 5
	}
,
	data = {
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "food_expansion:leaves3"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, 
{name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves3"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:log_paperbark"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:log_paperbark"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:log_paperbark"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, 
{name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:log_paperbark"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "air"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves3"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, 
{name = "air"}, {name = "air"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "food_expansion:leaves3"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves3"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves3"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 

}
}

schem_Tree_oa = {
	yslice_prob = {
		
	},
	size = {
		y = 7,
		x = 6,
		z = 6
	}
,
	data = {
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, 
{name = "food_expansion:leaves2"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, 
{name = "air"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:log_cinnamon"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:log_cinnamon"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:log_cinnamon"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:log_cinnamon"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, 
{name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "food_expansion:pod"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "air"}, 
{name = "air"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:pod"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "air"}, 

}
}



-- Tree Variant 1
schem_Treev1_oa = {
	yslice_prob = {
		
	},
	size = {
		y = 7,
		x = 5,
		z = 5
	}
,
	data = {
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves2"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:log_cinnamon"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:log_cinnamon"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:log_cinnamon"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:log_cinnamon"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:log_cinnamon"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 

}
}
-- Tree Variant 2
schem_Treev2_oa = {
	yslice_prob = {
		
	},
	size = {
		y = 7,
		x = 5,
		z = 5
	}
,
	data = {
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, 
{name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:log_cinnamon"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:log_cinnamon"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:log_cinnamon"}, {name = "food_expansion:pod"}, {name = "air"}, 
{name = "food_expansion:pod"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:log_cinnamon"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:pod"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, 
{name = "air"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 

}
}
-- Tree Variant 3
schem_Treev3_oa = {
	yslice_prob = {
		
	},
	size = {
		y = 7,
		x = 5,
		z = 5
	}
,
	data = {
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "air"}, {name = "air"}, 
{name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:log_cinnamon"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:log_cinnamon"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:log_cinnamon"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, 
{name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:log_cinnamon"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, {name = "food_expansion:pod"}, 
{name = "air"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:pod"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "food_expansion:leaves2"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 
{name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, {name = "air"}, 

}
}
