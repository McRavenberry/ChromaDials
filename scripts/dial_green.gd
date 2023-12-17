extends Sprite2D
var degs:float = 0.0
@export var gcw:bool = true 
@export var grun:bool = false
@export var gspeed:int = 30
@export var gdirection:int = 1
var green
var gclickable = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if grun:
		if gdirection > 0:
			rotation_degrees += delta * gspeed
		else:
			rotation_degrees -= delta * gspeed
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
		
		if degs - 0.01 < bg.bg_g and bg.bg_g < degs + 0.01:
			green = true
		else: 
			green = false
	else:
		pass

func _input(event):
	if get_tree().current_scene.name != "start" and gclickable:
		if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			if get_rect().has_point(to_local(event.position)) and grun:
	#			print("Green Dial: " + str(degs) + "  " + "BG Green: " + str(bg.bg_g))
				grun = false
				gdirection *= -1
				
				if green:
					%matched.play()
				else:
					%unmatched.play()
			elif get_rect().has_point(to_local(event.position)) and not grun:
				grun = true

#func _unhandled_input(event):
#	if event is InputEventMouseButton and $gbutton.pressed:
#		if event.button_index == MOUSE_BUTTON_LEFT:
#			if event.pressed and grun:
#				grun = false
#				gdirection *= -1
#			elif event.pressed and grun == false:
#				grun = true
#		if event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
#			print("Wheel down")
