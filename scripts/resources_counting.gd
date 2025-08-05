extends Panel

@onready var w_amount_ui = $wood/w_amount_ui
@onready var s_amount_ui = $stone/s_amount_ui

var wood_am : int
var stone_am : int
	
func _unhandled_input(_event):
	if Input.is_action_just_pressed("give_wood"):
		wood_am += 10

	elif Input.is_action_just_pressed("give_stone"):
		stone_am += 10

func _process(_delta):
	s_amount_ui.set_text(str(stone_am))
	w_amount_ui.set_text(str(wood_am))
