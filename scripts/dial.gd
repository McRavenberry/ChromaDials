extends Sprite2D
var degs:float = 0.0
@export var cw:bool = true 
@export var run:bool = true
@export var speed:int = 30
@export var direction:int = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if run:
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
		degs = rotation_degrees
