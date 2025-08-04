extends Camera2D

var zoom_min : float = 0.1
var zoom_max : float = 2.0
var zoom_speed : float = 0.01
var dragSensitivity : float = 3.0

func _input(event): 
	
	if Input.is_action_pressed("jump"):#camera pan handler
		if event is InputEventMouseMotion and Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
			position -= event.relative * dragSensitivity / zoom_max
	
	if event is InputEventMouseMotion and Input.is_mouse_button_pressed(MOUSE_BUTTON_MIDDLE):
		position -= event.relative * dragSensitivity / zoom_max
	
		
	if event is InputEventMouseButton: #zoom handler
		if event.button_index == MOUSE_BUTTON_WHEEL_UP:
			zoom += Vector2(zoom_speed, zoom_speed)
			
		elif event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
			zoom -= Vector2(zoom_speed, zoom_speed)
			
		zoom = clamp(zoom, Vector2(zoom_min, zoom_min), Vector2(zoom_max, zoom_max))
		
	pass
	

#func _unhandled_input(event): #old camera panning handler (might make it into option later)
	#if event is InputEventMouseMotion:
		#if event.button_mask == MOUSE_BUTTON_LEFT:
			#if Input.is_key_pressed(32):
				#position -= event.relative / zoom
	#pass
