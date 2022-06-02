function register_leaf(name, title, color, dye, include_light, include_dark)

	-- Normal
    minetest.register_node("colored_leaves:"..name, {
    	description = title.." Tree Leaves",
    	drawtype = "allfaces_optional",
    	waving = 1,
    	tiles = {"default_leaves.png^[colorize:"..color..":100"},
    	special_tiles = {"default_leaves.png^[colorize:"..color..":100"},
    	paramtype = "light",
    	is_ground_content = false,
    	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
    	sounds = default.node_sound_leaves_defaults(),
    	after_place_node = after_place_leaves,
    })
    minetest.register_craft({
    	type = "shapeless",
    	output = "colored_leaves:"..name,
    	recipe = {
    	    "default:leaves",
    	    dye,
    	},
	})

	-- Dark
	if ( include_dark == nil ) or ( include_dark == true ) then
    	minetest.register_node("colored_leaves:"..name.."_dark", {
    		description = "Dark "..title.." Tree Leaves",
    		drawtype = "allfaces_optional",
    		waving = 1,
    		tiles = {"default_leaves.png^[multiply:"..color},
    		special_tiles = {"default_leaves.png^[multiply:"..color},
    		paramtype = "light",
    		is_ground_content = false,
    		groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
    		sounds = default.node_sound_leaves_defaults(),
    		after_place_node = after_place_leaves,
    	})
    	minetest.register_craft({
    		type = "shapeless",
    		output = "colored_leaves:"..name.."_dark",
    		recipe = {
    		    "default:leaves",
				"dye:black",
    		    dye,
    		},
		})
	end


	-- Light
	if ( include_light == nil ) or ( include_light == true ) then
    	minetest.register_node("colored_leaves:"..name.."_light", {
    		description = "Light "..title.." Tree Leaves",
    		drawtype = "allfaces_optional",
    		waving = 1,
    		tiles = {"default_leaves.png^[colorize:"..color..":150"},
    		special_tiles = {"default_leaves.png^[colorize:"..color..":150"},
    		paramtype = "light",
    		is_ground_content = false,
    		groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
    		sounds = default.node_sound_leaves_defaults(),
    		after_place_node = after_place_leaves,
    	})
    	minetest.register_craft({
    		type = "shapeless",
    		output = "colored_leaves:"..name.."_light",
    		recipe = {
    		    "default:leaves",
				"dye:white",
    		    dye,
    		},
		})
	end
end