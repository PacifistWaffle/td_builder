extends Panel

@onready var menu_reveal = $menu_reveal
@onready var texture_rect = $menu_reveal/TextureRect

var clicked : bool = false



func _ready():
	menu_reveal.pressed.connect(self._button_pressed)
	

func _button_pressed():
	
	var tween = get_tree().create_tween()
	
	if clicked == false :
		tween.parallel().tween_property(self, "position", self.position + Vector2(70,0), 0.2)
		tween.parallel().tween_property(texture_rect, "rotation", 3.1, 0.2)
		
		clicked = true 
		
	elif clicked == true:
		tween.tween_property(self, "position", self.position - Vector2(70,0), 0.2)
		tween.parallel().tween_property(texture_rect, "rotation", 0, 0.2)
		
		clicked = false
