extends Sprite2D
var degs:float = 0.0
@export var cw:bool = true 
@export var run:bool = true
@export var speed:int = 30

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if run:
		if cw:
			rotation_degrees += delta * speed
#		else:
#			rotation_degrees -= delta * speed
#		if rotation_degrees > 360:
#			cw = false
#		if rotation_degrees < 0:
#			cw = true
		degs = rotation_degrees
#		print(degs)
