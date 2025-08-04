extends Control

@onready var building_placement = $building_placement

var clicked : bool = false

func _on_button_pressed():
	var name_1 : String = self.name
	var ref_a = get_tree().current_scene.get_node("building_placement")
	
	if clicked == false:
		ref_a._building_type(name_1)
		clicked == true
	else:
		ref_a._building_type()
		clicked == false

	

