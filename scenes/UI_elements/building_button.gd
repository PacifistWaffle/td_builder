extends Control

@onready var building_button: Control = $".."

func _on_button_pressed():
	var build_id : String = self.name
	print(build_id)
