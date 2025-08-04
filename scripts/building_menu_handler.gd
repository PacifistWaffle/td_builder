extends Panel

@onready var menu_reveal = $menu_reveal
@onready var texture_rect = $menu_reveal/TextureRect

var clicked : bool = false

var BUILDING_BUTTON = preload("res://scenes/UI_elements/building_button.tscn")

func _ready():

	for i in 5: # button generation lol
		genButtons(i, i+1)
		
	menu_reveal.pressed.connect(self._button_pressed)
	
#"UI/buildings_picker/building_1/Button/TextureRect"

func genButtons(pos, id):
	
	var temp = BUILDING_BUTTON.instantiate()
	temp.name = str("building_", id)
	temp.position = Vector2(50 + pos * 300, 25) 
	
	add_child(temp)

func _button_pressed():
	var tween = get_tree().create_tween()
	
	if clicked == false :
		tween.parallel().tween_property(self, "position", self.position - Vector2(0,200), 0.3)
		tween.parallel().tween_property(texture_rect, "rotation", 1.55, 0.3)
		
		clicked = true 
		
	elif clicked == true:
		tween.tween_property(self, "position", self.position + Vector2(0,200), 0.3)
		tween.parallel().tween_property(texture_rect, "rotation", -1.55, 0.3)
		
		clicked = false
