extends TextureRect
@onready var button = $"../.."


func _ready():
	var sperma = button.name 
	self.texture = load(str("res://assets/buttons/",sperma,".png"))
