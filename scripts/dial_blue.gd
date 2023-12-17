extends Sprite2D
var degs:float = 0.0
@export var cw:bool = true 
@export var brun:bool = false
@export var speed:int = 30
@export var direction:int = 1
var blue
var bclickable = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if brun:
		if direction > 0:
			rotation_degrees += delta * speed
		else:
			rotation_degrees -= delta * speed
#		else:
#			rotation_degrees -= delta * speed
#		if rotation_degrees > 360:
#			cw = false
#		if rotation_degrees < 0:
#			cw = true
		if rotation_degrees > 359.9:
			rotation_degrees = 0
		elif rotation_degrees < 0:
			rotation_degrees = 359.9
		degs = rotation_degrees/360
		
		if degs - 0.01 < bg.bg_b and bg.bg_b < degs + 0.01:
			blue = true
		else: 
			blue = false
	else:
		pass

func _input(event):
	if get_tree().current_scene.name != "start" and bclickable:
		if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			if get_rect().has_point(to_local(event.position)) and brun:
	#			print("Blue Dial: " + str(degs) + "  " + "BG Blue: " + str(bg.bg_b))
				brun = false
				direction *= -1
				
				if blue:
					%matched.play()
				else:
					%unmatched.play()
			elif get_rect().has_point(to_local(event.position)) and not brun:
				brun = true
			
	
	
#func _unhandled_input(event):
#	if event is InputEventMouseButton:
#		if event.button_index == MOUSE_BUTTON_LEFT:
#			if event.pressed and run:
#				run = false
#				direction *= -1
#			elif event.pressed and run == false:
#				run = true
#		if event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
#			print("Wheel down")
