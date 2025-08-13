extends Node2D

@onready var tile_map = $"../TileMap"
@onready var build_lib: Node2D = $"../build_lib"
@onready var resources: Panel = $"../UI/resources"

var clicked : bool = false
var build_name : String

func _function(x):
	build_name = x
	pass

func _unhandled_input(_event):

	if clicked == true:
		
		if Input.is_action_just_pressed("place"):
			
			var mouse_pos = get_global_mouse_position()
			var tile_mouse_pos = tile_map.local_to_map(mouse_pos) 
			var tile_data : TileData = tile_map.get_cell_tile_data(0, tile_mouse_pos)
			
			var is_empty = tile_map.get_cell_tile_data(1, tile_mouse_pos + Vector2i(-1,-1))
			
			var curr_build = build_lib.build_dict.build_name

			
			if tile_data:
				var where_placable = tile_data.get_custom_data(curr_build.placable)
				
				if where_placable && Input.is_action_pressed("jump") == false:
					
					if is_empty == null:
						
						if resources.wood_am >= curr_build.cost_w && resources.stone_am >= curr_build.cost_s:

							resources.wood_am -= curr_build.cost_w
							resources.stone_am -= curr_build.cost_s
							
							tile_map.set_cell(curr_build.layer, tile_mouse_pos + Vector2i(-1,-1), curr_build.source_id, curr_build.atlas_building)
						
						else:
							print("not enough resources!")
							pass
					else:
						print("not empty!")
						pass
				else:
					print("Nuh uh bitch")
					pass
			else:
				print("No data")
				pass
	else: 
		pass
