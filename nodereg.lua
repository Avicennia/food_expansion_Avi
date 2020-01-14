minetest.register_node("old_expansion:dev", {
    description = "dev",
    tiles = {"log2_mid.png",
             "log2_mid.png",
             "log2_side.png",
             "log2_side.png",
             "log2_side.png",
             "log2_side.png"},
    is_ground_content = true,
    groups = {cracky=3, stone=1,oddly_breakable_by_hand = 1}
})

for n = 1, 3, 1 do
minetest.register_node("old_expansion:leaves"..n, {
	description = "Leaves",
	drawtype = "allfaces_optional",
    waving = 1,
    tiles = {
		"leaves"..n..".png"
	},
	paramtype = "light",
	groups = {cracky = 6, oddly_breakable_by_hand = 3},
	on_punch = function(pos)
	minetest.remove_node(pos)
	end
})
end
minetest.register_node("old_expansion:vine", {
    description = "dev",
    tiles = {"vines1.png"},
    is_ground_content = true,
    groups = {cracky=3, stone=1, duramen = 2},
    drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}
		}
	}
})
minetest.register_node("old_expansion:vine2", {
    description = "dev",
    tiles = {"vines2.png"},
    is_ground_content = true,
    groups = {cracky=3, stone=1,oddly_breakable_by_hand = 1},
    drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}
		}
	}
})
minetest.register_node("old_expansion:bush1", {
	tiles = {
		"leaf1.png",
		"leaf1.png",
		"leaf1.png",
		"leaf1.png",
		"leaf1.png",
		"leaf1.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.0625, 0.0625, -0.1875, 0.0625},
			{-0.4375, -0.1875, -0.4375, 0.4375, 0.5, 0.4375},
		}
    },
    groups = {oddly_breakable_by_hand = 1}
})
minetest.register_node("old_expansion:vanilla1", {
	tiles = {
		"log2_mid.png"
	},
	drawtype = "nodebox",
    paramtype = "light",
    waving = 2,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, 0.4375, -0.0625, 0, 0.5, 0},
			{-0.125, 0.375, -0.125, 0.0625, 0.4375, 0.0625},
			{-0.125, -0.1875, -0.125, 0.0625, 0.3125, 0.0625},
			{-0.0625, 0, -0.0625, 0, 0.375, 0},
		}
    },
    groups = {oddly_breakable_by_hand = 1}
})
----------------------------------------
---------------------------------------- MOD_DEFAULT
----------------------------------------
minetest.register_node("old_expansion:log_2", {
    description = "Log",
    tiles = {"log2_mid.png",
             "log2_mid.png",
             "log2_side.png",
             "log2_side.png",
             "log2_side.png",
             "log2_side.png"},
    is_ground_content = true,
    groups = {cracky=3, stone=1, oddly_breakable_by_hand = 3}
})

minetest.register_node("old_expansion:log_2_heart", {
    description = "dev",
    tiles = {"log2_mid.png",
             "log2_mid.png",
             "log2_side.png",
             "log2_side.png",
             "log2_side.png",
             "log2_side.png^[mask:hot.png"},
    is_ground_content = true,
    groups = {cracky=3, stone=1,oddly_breakable_by_hand = 4}
})


---------------------------------------PODS

minetest.register_node("old_expansion:pod", {
	tiles = {
		"wls_podtex.png",
		"wls_podtex.png",
		"wls_podtex.png",
		"wls_podtex.png",
		"wls_podtex.png",
		"wls_podtex.png"
	},
    drawtype = "nodebox",
    waving = 2,
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, 0.25, -0.125, 0.0625, 0.4375, 0},
			{-0.0625, 0.4375, -0.1875, 0, 0.5, 0.0625}
		}
    },
	groups = {cracky = 6,oddly_breakable_by_hand = 6},
	on_punch = function(pos)
	local meta = minetest.get_meta(pos)
	minetest.chat_send_all(meta:get_string("type"))
	end
})
minetest.register_node("old_expansion:pod2", {
	tiles = {
		"wls_podtex.png",
		"wls_podtex.png",
		"wls_podtex.png",
		"wls_podtex.png",
		"wls_podtex.png",
		"wls_podtex.png"
	},
    drawtype = "nodebox",
	waving = 2,
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, 0, -0.125, 0.0625, 0.4375, 0},
			{-0.0625, 0.4375, -0.1875, 0, 0.5, 0.0625}
		}
    },
    groups = {oddly_breakable_by_hand = 10}
})
minetest.register_node("old_expansion:pod3", {
	tiles = {
		"wls_podtex.png",
		"wls_podtex.png",
		"wls_podtex.png",
		"wls_podtex.png",
		"wls_podtex.png",
		"wls_podtex.png"
	},
    drawtype = "nodebox",
    waving = 2,
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, 0.1875, -0.125, 0.0625, 0.4375, 0},
            {-0.0625, 0.4375, -0.1875, 0, 0.5, 0.0625},
            {-0.125, -0.1875, -0.1875, 0.125, 0.1875, 0.0625}
		}
    },
    groups = {oddly_breakable_by_hand = 10}
})
--  --  --  --  --  --  --  Fruits
local fruit_names = {"cherry","pomegranate","peach","apricot","cinnamon","apple","avocado","fig","breadfruit","banana","almond","cashew","date","dragonfruit","durian","guava","hazelnut","grapefruit","gooseberry","jackfruit","coconut","candlenut","lemon","lime","lychee","olive","nutmeg","maple","mango","papaya","passionfruit","pecan","persimmon","pistachio","plum","rambutan","soursop","starfruit","tamarind","vanillabean","walnut","peppeprcorn","pawpaw","paperbark","spiderweb","orange"}
for k,v in ipairs(fruit_names)do 
    minetest.register_node("old_expansion:fruit_"..v,{
        description = v,
		tiles = {"fruit_"..v..".png"},
        drawtype = "plantlike",
		waving = 1,
		walkable = false,
        paramtype = "light",
        is_ground_content = true,
		groups = {choppy=3,oddly_breakable_by_hand = 1, old_expansion_fruit = 2},
		on_punch = function(pos, node, puncher, pointed_thing)
			if(node.name == "old_expansion:fruit_orange") then 
				minetest.set_node(pos, {name = "old_expansion:pod"})
				pos.y = pos.y - 0.2;
				minetest.add_item(pos,{name="old_expansion:fruit_orange", count = 3})
			else
			end
		end
	})

    minetest.register_node("old_expansion:sapling_"..v,{
        description = v.." Sapling",
        tiles = {"sapling_"..v..".png"},
        drawtype = "plantlike",
		waving = 1,
		walkable = false,
        paramtype = "light",
        paramtype2 = "facedir",
        is_ground_content = true,
		groups = {choppy = 3, oddly_breakable_by_hand = 1, old_expansion_sapling = 2},
		on_punch = function(pos)
		local meta = minetest.get_meta(pos)
		minetest.chat_send_all(meta:get_int("growthlev"))
		end,
		on_construct = function(pos)
		local timer = minetest.get_node_timer(pos)
		timer:start(6)
		end,
		on_timer = function(pos)
			local t = { mself = minetest.get_meta(pos), neigh = {}, area = {{x = pos.x - 2, y = pos.y - 1, z = pos.z - 2},{x = pos.x + 2, y = pos.y - 1, z = pos.z + 2}}}
			if(t.mself:get_int("growthlev") >= 0)then

				for n = 1, #old_expansion.growthSources.names, 1 do -- Incrementally add integers to meta growth level based on proximal nodes.
				
					local sources = minetest.find_nodes_in_area(t.area[1], t.area[2], old_expansion.growthSources.names[n])
					if(type(sources) == "table" and #sources >= 1)then
					t.mself:set_int("growthlev", t.mself:get_int("growthlev") + (#sources*old_expansion.growthSources.values[n]))
					else end
				end
			else minetest.set_node(pos, {name = "old_expansion:sapling_dead"}) end -- Replace with dead sapling if growth falls below 0

			--Sprouting and pod assignment

			if(t.mself:get_int("growthlev") >= 130)then -- Full tree growth
				minetest.remove_node(pos)
				minetest.place_schematic({x = pos.x - 2, y = pos.y, z = pos.z - 2},old_expansion.tree_rand(),"random",_,false)
				local pods = minetest.find_nodes_in_area({x = pos.x - 2, y = pos.y, z = pos.z - 2},{x = pos.x + 2, y = pos.y + 7, z = pos.z + 2}, {"old_expansion:pod"})
				
				if(type(pods) == "table" and #pods > 0)then
					for n = 1, #pods, 1 do
					local meta = minetest.get_meta(pods[n])
					if(meta:get_string("type") == "")then
						meta:set_string("type", v)
					else end
				end
				else end
			else end
			minetest.chat_send_all(t.mself:get_int("growthlev"))
			local timer = minetest.get_node_timer(pos)
			timer:start(6)
		end

    })
end
minetest.register_node("old_expansion:cherry_0", {
	tiles = {
		"cherry_1_tex.png",
		"cherry_1_tex.png",
		"cherry_1_tex.png",
		"cherry_1_tex.png",
		"cherry_1_tex.png",
		"cherry_1_tex.png"
	},
    drawtype = "nodebox",
    waving = 2,
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{0, -0.0625, -0.0625, 0.0625, 0.4375, 0},
			{-0.0625, 0.4375, -0.1875, 0, 0.5, 0.0625},
			{0, 0.3125, -0.125, 0.0625, 0.375, 0},
			{0, 0.25, 0, 0.0625, 0.3125, 0.0625},
			{0, 0.125, -0.125, 0.0625, 0.1875, -0.0625},
			{0, 0.0625, 0, 0.0625, 0.125, 0.0625},
			{0.0625, 0, -0.0625, 0.125, 0.0625, 0},
			{0.0625, 0.1875, -0.0625, 0.125, 0.25, 0},
		}
    },
    groups = {oddly_breakable_by_hand = 3}
        
})
minetest.register_node("old_expansion:cherry_1", {
	tiles = {
		"cherry_1_tex.png",
		"cherry_1_tex.png",
		"cherry_1_tex.png",
		"cherry_1_tex.png",
		"cherry_1_tex.png",
		"cherry_1_tex.png"
    },
	groups = {falling_node = 20,oddly_breakable_by_hand = 1},
	waving = 2,
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{0, -0.375, -0.0625, 0.0625, 0.4375, 0},
			{-0.0625, 0.4375, -0.1875, 0, 0.5, 0.0625},
			{-0.0625, 0.25, -0.125, 0.0625, 0.375, -0.0625},
			{-0.0625, 0.1875, 0, 0.0625, 0.3125, 0.0625},
			{-0.0625, 0.0625, -0.125, 0.0625, 0.1875, -0.0625},
			{0, 0.0625, 0, 0.0625, 0.125, 0.0625},
			{0.0625, -0.0625, -0.125, 0.125, 0.0625, 0},
			{0.0625, 0.125, -0.0625, 0.125, 0.25, 0.0625},
			{0.0625, -0.3125, -0.125, 0.125, -0.1875, 0},
		}
    },
    on_construct = function(pos)
    end
})
minetest.register_node("old_expansion:gardenwindy", {
    description = "Windy Garden",
    drawtype = "plantlike",
    tiles = {"garden_windy.png"},
    waving = 1,
    paramtype = "light",
    paramtype2 = "facedir",
    is_ground_content = true,
    groups = {cracky=3, stone=1,oddly_breakable_by_hand = 1},
    on_punch = function(pos, pointed_thing)
        minetest.chat_send_all(#fruit_names)
    end
})
minetest.register_node("old_expansion:log_paperbark", {
    description = "Bananas",
    tiles = {"log_paperbark.png"},
    waving = 1,
    paramtype = "light",
    paramtype2 = "facedir",
    is_ground_content = true,
    groups = {cracky=3, stone=1,oddly_breakable_by_hand = 1},
    on_punch = function(pos, pointed_thing)
        
    end
})
minetest.register_node("old_expansion:log_cinnamon", {
    description = "Bananas",
    tiles = {"log_cinnamon.png"},
    waving = 1,
    paramtype = "light",
    paramtype2 = "facedir",
    is_ground_content = true,
    groups = {cracky=3, stone=1,oddly_breakable_by_hand = 1},
    on_punch = function(pos, pointed_thing)
        
    end
})


minetest.register_node("old_expansion:meshy", {
    drawtype = "mesh",
    tiles = {
        "log1_side.png"
    },
    mesh = "puddle.b3d",
})

-- Dirt Bar series (Because why not?)
local old_expansion_dirtbars = {"compressed","divided","barred"}
local old_expansion_dirtbars_tabs = {{
	type = "fixed",
	fixed = {
		{-0.4375, -0.5, -0.4375, 0.4375, -0.375, 0.4375}, -- NodeBox1
	}
},{
	type = "fixed",
	fixed = {
		{-0.4375, -0.5, -0.4375, -0.0625, -0.375, 0.4375}, -- NodeBox1
		{0.0625, -0.5, -0.4375, 0.4375, -0.375, 0.4375}, -- NodeBox2
	}
},{
	type = "fixed",
	fixed = {
		{-0.3125, -0.5, -0.1875, -0.0625, -0.375, 0.25}, -- NodeBox1
		{0.0625, -0.5, -0.1875, 0.3125, -0.375, 0.25}, -- NodeBox3
	}
}}
for k,v in ipairs(old_expansion_dirtbars) do
	minetest.register_node("old_expansion:dirt_culinary_"..v,{
		description = v.." Soilent",
		tiles = {"ws_forest_litter.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {foody = 1, dirty = 1, oddly_breakable_by_hand = 1},
		drawtype = "nodebox",
		node_box = old_expansion_dirtbars_tabs[k],
		on_construct = function(pos)
			if(minetest.get_node(pos).name == "old_expansion:dirt_culinary_barred")then
			local timer = minetest.get_node_timer(pos)
			if(minetest.get_node({x=pos.x,y=pos.y-1,z=pos.z}).name == "ws_basic:rack")then
				timer:start(100)else
			timer:start(180)
				end
			else end
		end,
		on_timer = function(pos)
			minetest.set_node(pos,{name = "old_expansion:dirt_culinary_dried"})
		end,
		on_punch = function(pos, node, puncher, pointed_thing)
			minetest.set_node(pos,{name = node.name, param2 = node.param2 + 1})
			local p = puncher:get_wielded_item():get_name()
			if(p == "ws_core:knife_flint" and node.name == "old_expansion:dirt_culinary_compressed") then
				minetest.set_node(pos,{name = "old_expansion:dirt_culinary_divided", param2 = 0})
			elseif(p == "ws_core:knife_flint" and node.name == "old_expansion:dirt_culinary_divided")then
				minetest.set_node(pos,{name = "old_expansion:dirt_culinary_barred", param2 = 0})
			else end
		end
	})
end
minetest.register_node("old_expansion:dirt_culinary_dried",{
	description = "Dried Soilent",
	tiles = {"ws_rocky_dirt.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {foody = 1, dirty = 1, oddly_breakable_by_hand = 1},
	drawtype = "nodebox",
	node_box = old_expansion_dirtbars_tabs[3],
	drop = "old_expansion:dirt_bar"
})

minetest.register_node("old_expansion:sapling_dead",{
	drawtype = "plantlike",
	tiles = {"sapling_dead.png"},
	groups = {oddly_breakable_by_hand = 1}
})