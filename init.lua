function register_leaf(name, title, color, dye)
    minetest.register_node("colored_leaves:"..name, {
    	description = title.." Tree Leaves",
    	drawtype = "allfaces_optional",
    	waving = 1,
    	tiles = {"default_leaves.png^[colorize:"..color},
    	special_tiles = {"default_leaves_simple.png^[colorize:"..color},
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
end
register_leaf("red","Red","#ff2b2b", "dye:red")
register_leaf("blue","Blue","#1ca0ff", "dye:blue")
register_leaf("cyan","Cyan","#1cffd5", "dye:cyan")
register_leaf("purple","Purple","#ab18f5", "dye:purple")
register_leaf("pink","Pink","#ff36b2", "dye:pink")
register_leaf("lime","Lime","#b0f70a", "dye:lime")
register_leaf("white","White","#ffffff", "dye:white")
