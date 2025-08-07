extends TextureRect
@onready var button = $"../.."


func _ready():
	var temp = button.name 
	self.texture = load(str("res://assets/buttons/",temp,".png"))
