minetest.register_node("food_expansion:dev", {
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
minetest.register_node("food_expansion:leaves1", {
	description = "Leaves",
	drawtype = "glasslike",
    waving = 1,
    tiles = {
		"leaves1.png"
	},
	paramtype = "light"
})
minetest.register_node("food_expansion:leaves2", {
	description = "Leaves",
	drawtype = "glasslike",
    waving = 1,
    tiles = {
		"leaves2.png"
	},
	paramtype = "light"
})
minetest.register_node("food_expansion:leaves3", {
	description = "Leaves",
	drawtype = "glasslike",
    waving = 1,
    tiles = {
		"leaves3.png"
	},
	paramtype = "light",
})
minetest.register_node("food_expansion:vine", {
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
minetest.register_node("food_expansion:vine2", {
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
minetest.register_node("food_expansion:bush1", {
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
minetest.register_node("food_expansion:vanilla1", {
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
minetest.register_node("food_expansion:log_2", {
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

minetest.register_node("food_expansion:log_2_heart", {
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

minetest.register_node("food_expansion:pod", {
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
    groups = {oddly_breakable_by_hand = 10}
})
minetest.register_node("food_expansion:pod2", {
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
minetest.register_node("food_expansion:pod3", {
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
    minetest.register_node("food_expansion:fruit_"..v,{
        description = v,
		tiles = {"fruit_"..v..".png"},
        drawtype = "plantlike",
		waving = 1,
		walkable = false,
        paramtype = "light",
        is_ground_content = true,
		groups = {choppy=3,oddly_breakable_by_hand = 1, food_expansion_fruit = 2},
		on_punch = function(pos, node, puncher, pointed_thing)
			if(node.name == "food_expansion:fruit_orange") then 
				minetest.add_item(pos,{name="food_expansion:fruit_orange", count = 3})
				minetest.set_node(pos, {name = "food_expansion:pod"})
			else
			end
		end
	})

    minetest.register_node("food_expansion:sapling_"..v,{
        description = v.." Sapling",
        tiles = {"sapling_"..v..".png"},
        drawtype = "plantlike",
		waving = 1,
		walkable = false,
        paramtype = "light",
        paramtype2 = "facedir",
        is_ground_content = true,
        groups = {choppy=3,oddly_breakable_by_hand = 1, food_expansion_sapling = 2}

    })
end
minetest.register_node("food_expansion:cherry_0", {
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
minetest.register_node("food_expansion:cherry_1", {
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
minetest.register_node("food_expansion:gardenwindy", {
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
minetest.register_node("food_expansion:log_paperbark", {
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
minetest.register_node("food_expansion:log_cinnamon", {
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


minetest.register_node("food_expansion:meshy", {
    drawtype = "mesh",
    tiles = {
        "log1_side.png"
    },
    mesh = "puddle.b3d",
})

-- Dirt Bar series (Because why not?)
local food_expansion_dirtbars = {"compressed","divided","barred"}
local food_expansion_dirtbars_tabs = {{
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
for k,v in ipairs(food_expansion_dirtbars) do
	minetest.register_node("food_expansion:dirt_culinary_"..v,{
		description = v.." Soilent",
		tiles = {"ws_forest_litter.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {foody = 1, dirty = 1, oddly_breakable_by_hand = 1},
		drawtype = "nodebox",
		node_box = food_expansion_dirtbars_tabs[k],
		on_construct = function(pos)
			if(minetest.get_node(pos).name == "food_expansion:dirt_culinary_barred")then
			local timer = minetest.get_node_timer(pos)
			if(minetest.get_node({x=pos.x,y=pos.y-1,z=pos.z}).name == "ws_basic:rack")then
				timer:start(100)else
			timer:start(180)
				end
			else end
		end,
		on_timer = function(pos)
			minetest.set_node(pos,{name = "food_expansion:dirt_culinary_dried"})
		end,
		on_punch = function(pos, node, puncher, pointed_thing)
			minetest.set_node(pos,{name = node.name, param2 = node.param2 + 1})
			local p = puncher:get_wielded_item():get_name()
			if(p == "ws_core:knife_flint" and node.name == "food_expansion:dirt_culinary_compressed") then
				minetest.set_node(pos,{name = "food_expansion:dirt_culinary_divided", param2 = 0})
			elseif(p == "ws_core:knife_flint" and node.name == "food_expansion:dirt_culinary_divided")then
				minetest.set_node(pos,{name = "food_expansion:dirt_culinary_barred", param2 = 0})
			else end
		end
	})
end
minetest.register_node("food_expansion:dirt_culinary_dried",{
	description = "Dried Soilent",
	tiles = {"ws_rocky_dirt.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {foody = 1, dirty = 1, oddly_breakable_by_hand = 1},
	drawtype = "nodebox",
	node_box = food_expansion_dirtbars_tabs[3],
	drop = "food_expansion:dirt_bar"
})