extends Sprite2D
var degs:float = 0.0
@export var rcw:bool = true 
@export var rrun:bool = false
@export var rspeed:int = 30
@export var rdirection:int = 1
var red

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if rrun:
		if rdirection > 0:
			rotation_degrees += delta * rspeed
		else:
			rotation_degrees -= delta * rspeed
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
		
		if degs - 0.01 < bg.bg_r and bg.bg_r < degs + 0.01:
			red = true
		else: 
			red = false
	else:
		pass

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if get_rect().has_point(to_local(event.position)) and rrun:
#			print("Red Dial: " + str(degs) + "  " + "BG Red: " + str(bg.bg_r))
			rrun = false
			rdirection *= -1
		elif get_rect().has_point(to_local(event.position)) and not rrun:
			rrun = true

#func _unhandled_input(event):
#	if event is InputEventMouseButton and $rbutton.pressed:
#		if event.button_index == MOUSE_BUTTON_LEFT:
#			if event.pressed and rrun:
#				rrun = false
#				rdirection *= -1
#			elif event.pressed and rrun == false:
#				rrun = true
#		if event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
#			print("Wheel down")
