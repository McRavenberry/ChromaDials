extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
#	for dial in get_tree().get_nodes_in_group("screen"):
#		get_node("TV/screen").r = dial.degs / 360.0
#		get_node("TV/screen").g = dial.degs / 360.0
#		get_node("TV/screen").b = dial.degs / 360.0
#	get_node("TV/screen").r = get_node("dials/red_dial").degs / 360.0
#	get_node("TV/screen").b = get_node("dials/blue_dial").degs / 360.0
#	get_node("TV/screen").g = get_node("dials/green_dial").degs / 360.0
#	for dial in get_tree().get_nodes_in_group("dial"):

	var hr:float = get_node("TV/red_dial").degs
	var hg:float = get_node("TV/green_dial").degs
	var hb:float = get_node("TV/blue_dial").degs
	print(hr)
	
	get_node("TV/screen").r = get_node("TV/red_dial").degs / 360.0
#	get_node("TV/screen").h = (hr + hg + hb) / 3
	get_node("TV/left_knob").r = get_node("TV/red_dial").degs / 360.0
	get_node("TV/right_knob").r = get_node("TV/red_dial").degs / 360.0
	
	get_node("TV/screen").g = get_node("TV/green_dial").degs / 360.0
	get_node("TV/left_knob").g = get_node("TV/green_dial").degs / 360.0
	get_node("TV/right_knob").g = get_node("TV/green_dial").degs / 360.0
	
	get_node("TV/screen").b = get_node("TV/blue_dial").degs / 360.0
	get_node("TV/left_knob").b = get_node("TV/blue_dial").degs / 360.0
	get_node("TV/right_knob").b = get_node("TV/blue_dial").degs / 360.0
	
#	get_node("TV/screen").h = (hr + hg + hb) / 3
#	for screen in get_tree().get_nodes_in_group("screen"):
#		for knob in get_tree().get_nodes_in_group("knob"):
#			var degrees = 324
#			knob.r = dial.degs / 360.0
#			knob.g = dial.degs / 360.0
#			knob.b = dial.degs / 360.0
#			screen.r = dial.degs / 360.0
#			screen.g = dial.degs / 360.0
#			screen.b = dial.degs / 360.0
#			print(dial.degs)

	for bgb in get_tree().get_nodes_in_group("bg"):
		bgb.r = 0.5
		bgb.g = 0.6
		bgb.b = 1.0
#	$target_color.b = 100
