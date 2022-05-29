function register_leaf(name, title, color, dye)

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

	-- Light
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
register_leaf("red","Red","#ff2b2b", "dye:red")
register_leaf("orange","Orange","#ff630f", "dye:orange")
register_leaf("blue","Blue","#1ca0ff", "dye:blue")
register_leaf("cyan","Cyan","#1cffd5", "dye:cyan")
register_leaf("purple","Purple","#ab18f5", "dye:purple")
register_leaf("pink","Pink","#ff36b2", "dye:pink")
register_leaf("lime","Lime","#b0f70a", "dye:lime")
register_leaf("white","White","#ffffff", "dye:white")
