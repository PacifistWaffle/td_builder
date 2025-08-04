extends Panel

@onready var wood_amount = $wood/wood_amount
@onready var stone_amount = $stone/stone_amount

var wood_am : int
var stone_am : int
	
func _unhandled_input(_event):
	if Input.is_action_just_pressed("give_wood"):
		wood_am += 1

	elif Input.is_action_just_pressed("give_stone"):
		stone_am += 1

func _process(_delta):
	stone_amount.set_text(str(stone_am))
	wood_amount.set_text(str(wood_am))
