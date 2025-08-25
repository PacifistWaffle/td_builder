extends Node2D

var atlas_building : Vector2i
var building_name : String
var source_id : int
var layer : int
var placable : String
var unlocked : bool
var cost_w : int
var cost_s : int
var cost_g : int


var build_dict = {
	
	"building_1": {	
		
		atlas_building = Vector2i(0,0),
		building_name = "hut",
		source_id = 1,
		layer = 1,
		placable = "ground",
		unlocked = true,
		cost_w = 1,
		cost_s = 1,
		cost_g = 1
		},
		
	"building_2": {	
		
		atlas_building = Vector2i(1,0),
		building_name = "win_hut",
		source_id = 1,
		layer = 1,
		placable = "ground",
		unlocked = true,
		cost_w = 1,
		cost_s = 1,
		cost_g = 1
		},
		
	"building_3": {	
		
		atlas_building = Vector2i(2,0),
		building_name = "castle",
		source_id = 1,
		layer = 1,
		placable = "ground",
		unlocked = true,
		cost_w = 1,
		cost_s = 1,
		cost_g = 1
		},
		
	"building_4": {	
		
		atlas_building = Vector2i(5,0),
		building_name = "tree",
		source_id = 1,
		layer = 1,
		placable = "water",
		unlocked = true,
		cost_w = 1,
		cost_s = 1,
		cost_g = 1
		},
		
	"building_5": {	
		
		atlas_building = Vector2i(4,0),
		building_name = "bridge",
		source_id = 1,
		layer = 1,
		placable = "ground",
		unlocked = true,
		cost_w = 1,
		cost_s = 1,
		cost_g = 1
		},

}

#
#@warning_ignore("shadowed_variable_base_class")
#func _building_type(name):
#
	#match name:
		#
		#"building_1":
			#atlas_building = Vector2i(0,0)
			#building_name = name
			#source_id = 1
			#layer = 1
			#placable = "ground"
			#unlocked = true
			#cost_w = 1
			#cost_s = 1
			#
		#"building_2":
			#atlas_building = Vector2i(1,0)
			#building_name = name
			#source_id = 1
			#layer = 1
			#placable = "ground"
			#unlocked = true
			#cost_w = 1
			#cost_s = 1
			#
		#"building_3":
			#atlas_building = Vector2i(2,0)
			#building_name = name
			#source_id = 1
			#layer = 1
			#placable = "ground"
			#unlocked = true
			#cost_w = 1
			#cost_s = 1
			#
		#"building_4":
			#atlas_building = Vector2i(5,0)
			#building_name = name
			#source_id = 1
			#layer = 1
			#placable = "water"
			#unlocked = true
			#cost_w = 1
			#cost_s = 1
		#
