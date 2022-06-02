local function register_leaf_node(name, title, texture_mod)
    minetest.register_node("colored_leaves:"..name, {
    	description = title.." Tree Leaves",
    	drawtype = "allfaces_optional",
    	waving = 1,
    	tiles = {"default_leaves.png"..texture_mod},
    	special_tiles = {"default_leaves.png"..texture_mod},
    	paramtype = "light",
    	is_ground_content = false,
    	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
    	sounds = default.node_sound_leaves_defaults(),
    	after_place_node = after_place_leaves,
    })
end
function register_leaf(name, title, color, dye, include_light, include_dark)
    -- Normal
    register_leaf_node(name, title, "^[colorize:"..color..":100")
    minetest.register_craft({
    	type = "shapeless",
    	output = "colored_leaves:"..name,
    	recipe = {
    	    "default:leaves",
    	    dye,
    	},
	})


	if ( include_dark == nil ) or ( include_dark == true ) then
        register_leaf_node(name.."_dark", "Dark " .. title, "^[multiply:"..color)
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

	if ( include_light == nil ) or ( include_light == true ) then
        register_leaf_node(name.."_light", "Light " .. title, "^[colorize:"..color..":150")
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