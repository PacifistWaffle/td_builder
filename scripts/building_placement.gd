extends Node2D

@onready var tile_map = $"../TileMap"
@onready var panel = $"../UI/buildings_picker"

var atlas_building : Vector2i
var building_name : String
var source_id : int
var layer : int
var placable : String
var unlocked : bool
var clicked : bool = false


@warning_ignore("shadowed_variable_base_class")
func _building_type(name):

	match name:
		
		"building_1":
			atlas_building = Vector2i(0,0)
			building_name = name
			source_id = 1
			layer = 1
			placable = "ground"
			unlocked = true
			
		"building_2":
			atlas_building = Vector2i(1,0)
			building_name = name
			source_id = 1
			layer = 1
			placable = "ground"
			unlocked = true
			
		"building_3":
			atlas_building = Vector2i(2,0)
			building_name = name
			source_id = 1
			layer = 1
			placable = "ground"
			unlocked = true
			
		"building_4":
			atlas_building = Vector2i(5,0)
			building_name = name
			source_id = 1
			layer = 1
			placable = "water"
			unlocked = true


func _on_menu_reveal_pressed():
	if clicked == false:
		clicked = true
	elif clicked == true:
		clicked = false


func _unhandled_input(_event):

	if clicked == true:
		if Input.is_action_just_pressed("place"):
			
			var mouse_pos = get_global_mouse_position()
			var tile_mouse_pos = tile_map.local_to_map(mouse_pos)
			var tile_data : TileData = tile_map.get_cell_tile_data(0, tile_mouse_pos)
			
			if tile_data:
				var where_placable = tile_data.get_custom_data(placable)
				
				if where_placable && Input.is_action_pressed("jump") == false:
					tile_map.set_cell(layer, tile_mouse_pos + Vector2i(-1,-1), source_id, atlas_building)
					
				else:
					print("Nuh uh bitch")
					
			else:
				print("No data")
	else: 
		pass
