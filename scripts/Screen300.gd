extends Sprite2D
var r:float = 1.0
var g:float = 1.0
var b:float = 1.0
var h:float = 359
var s:float = 100
var v:float = 100
var a:float = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_modulate(Color(r,g,b,1))
#	set_modulate(Color.from_hsv(h,s,v,a))
#	h = get_node().degs
#	print(h)
#	print(Color.from_hsv(h,s,v,a))
