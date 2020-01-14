
old_expansion.particles_leafdrop = function(pos)
    minetest.add_particlespawner({
        amount = 6,
        time = 3,

        minpos = pos,
        maxpos = {x=pos.x, y=pos.y -1, z=pos.z},
        minvel = {x=0, y=-1, z=0},
        maxvel = {x=0, y=-1, z=0},
        minacc = {x=0, y=0, z=0},
        maxacc = {x=0, y=0, z=0},
        minexptime = 1,
        maxexptime = 2,
        minsize = 1,
        maxsize = 1,

        collisiondetection = false,

        collision_removal = false,

        attached = ObjectRef,

        vertical = false,

        texture = "leaf.png",

        glow = 0

    })
end
--  --  --  --  --  --  --  UTIL    --  --  --  --  --  --  --  
--[[old_expansion.clear_metas = function()
end]]

old_expansion.treeschem_randomizer = function()
        math.random(); math.random(); math.random()
        local num = math.random(135)
        local s = ""
        if(num >=1 and num <=8 )then
            s = schem_Tree_ac
        elseif(num >=9 and num <=21 )then
            s = schem_Treev2_ac
        elseif(num >=22 and num <=30 )then
            s = schem_Treev1_ac
        elseif(num >=31 and num <= 35) then
            s = schem_Treev3_ac
        elseif(num >=36 and num <=40 )then
            s = schem_Tree_oa
        elseif(num >=41 and num <=50 )then
            s = schem_Treev2_as
        elseif(num >=51 and num <=59 )then
            s = schem_Treev1_as
        elseif(num >=60 and num <= 65) then
            s = schem_Treev3_as
        elseif(num >=66 and num <=78 )then
            s = schem_Tree_oa
        elseif(num >=79 and num <=89 )then
            s = schem_Treev2_oa
        elseif(num >=90 and num <=100 )then
            s = schem_Treev1_oa
        elseif(num >=101 and num <= 135) then
            s = schem_Treev3_oa
        end
        return s
    end
--[[old_expansion.fruitpod_randomizer = function()
        math.random(); math.random(); math.random()
        local num = math.random(135)
        local s = ""
        if(num >=1 and num <=8 )then
            s = "old_expansion:fruit_almond"
        elseif(num >=9 and num <=21 )then
            s = "old_expansion:fruit_dragonfruit"
        elseif(num >=22 and num <=30 )then
            s = "old_expansion:fruit_peach"
        elseif(num >=31 and num <= 35) then
            s = "old_expansion:fruit_pear"
        elseif(num >=36 and num <=40 )then
            s = "old_expansion:fruit_pomegranate"
        elseif(num >=41 and num <=50 )then
            s = "old_expansion:fruit_persimmon"
        elseif(num >=51 and num <=59 )then
            s = "old_expansion:fruit_date"
        elseif(num >=60 and num <= 65) then
            s = "old_expansion:fruit_fig"
        elseif(num >=66 and num <=78 )then
            s = "old_expansion:fruit_orange"
        elseif(num >=79 and num <=89 )then
            s = "old_expansion:fruit_breadfruit"
        elseif(num >=90 and num <=100 )then
            s = "old_expansion:fruit_cashew"
        elseif(num >=101 and num <= 135) then
            s = "old_expansion:fruit_banana"
        end
        return s
    end]]
--[[old_expansion.treepod_assignment = function(pos,type,stage)
    local pseudo_deva = {}
    local n = 4
    local deva = minetest.find_nodes_in_area(pos,{x=pos.x+n,y=pos.y+7,z=pos.z+n},{name="old_expansion:pod"})
    minetest.chat_send_all(#deva)
    for k,v in ipairs(deva) do
        local meta = minetest.get_meta(pos)
        meta:set_string("type",type)
        meta:set_string("stage",stage)
        minetest.chat_send_all(meta:get_string("type")..","..meta:get_string("stage"))
    end
    
end]]
--[[old_expansion.ibundle = function(array,order) --Function for bundling arrays into smaller arrays based on a single 
--integer specifying the size of child arrays
local peck = {}
local bushel = {}
local num = 1
for b = 1, #array/order,1 do 
    local tag = b --identifying variable used for reference to place in the parent table
    
    for a = 1,order,1 do
        if(num <= #array)then
        table.insert(peck,array[num])
        num = num + 1
        end
    end
    table.insert(bushel,peck)
    peck = {}
end
    minetest.chat_send_all(minetest.serialize(bushel))
    
end]]
