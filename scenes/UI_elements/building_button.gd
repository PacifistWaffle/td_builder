extends Control

@onready var building_button: Control = $".."
@onready var building_placement: Node2D = $"../../../building_placement"

var build_id : String

func _ready():
	build_id = self.name


func _on_button_pressed():
	building_placement._function(build_id)
	#print(build_id)
