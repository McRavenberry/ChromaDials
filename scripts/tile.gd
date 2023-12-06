extends Sprite2D
var r:float = 255
var g:float = 255
var b:float = 255

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_modulate(Color8(int(r),int(g),int(b),255))
