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

#	var hr:float = get_node("TV/red_dial").degs
#	var hg:float = get_node("TV/green_dial").degs
#	var hb:float = get_node("TV/blue_dial").degs

	# Updates the screen color based on the dials
	get_node("TV/screen").r = get_node("TV/red_dial").degs / 360
#	get_node("TV/screen").h = (hr + hg + hb) / 3
#	get_node("TV/left_light").r = get_node("TV/red_dial").degs % 360
#	get_node("TV/right_light").r = get_node("TV/red_dial").degs % 360
#	get_node("TV/center_light").r = get_node("TV/red_dial").degs % 360
	
	get_node("TV/screen").g = get_node("TV/green_dial").degs / 360
#	get_node("TV/left_light").g = get_node("TV/green_dial").degs % 360
#	get_node("TV/right_light").g = get_node("TV/green_dial").degs % 360
#	get_node("TV/center_light").g = get_node("TV/green_dial").degs % 360
	
	get_node("TV/screen").b = get_node("TV/blue_dial").degs / 360
#	get_node("TV/left_light").b = get_node("TV/blue_dial").degs % 360.0
#	get_node("TV/right_light").b = get_node("TV/blue_dial").degs % 360.0
#	get_node("TV/center_light").b = get_node("TV/blue_dial").degs % 360.0
	
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

	# Sets the background color
	for bgb in get_tree().get_nodes_in_group("bg"):
		bgb.r = 0.5
		bgb.g = 0.6
		bgb.b = 1.0
#	$target_color.b = 100

	# Lights up the bulbs if the dials are +/- 5% of background color
	if get_node("TV/red_dial").degs / 360 * 0.95 < get_node("bgb/Bgblob450").r and get_node("bgb/Bgblob450").r < get_node("TV/red_dial").degs / 360 * 1.05:
		get_node("TV/left_bulb").set_modulate(Color(1,0,0,1))
	else:
		get_node("TV/left_bulb").set_modulate(Color(1,1,1,1))
		
	if get_node("TV/green_dial").degs / 360 * 0.95 < get_node("bgb/Bgblob450").g and get_node("bgb/Bgblob450").g < get_node("TV/green_dial").degs / 360 * 1.05:
		get_node("TV/center_bulb").set_modulate(Color(0,1,0,1))
	else:
		get_node("TV/center_bulb").set_modulate(Color(1,1,1,1))
		
	if get_node("TV/blue_dial").degs / 360 * 0.95 < get_node("bgb/Bgblob450").b and get_node("bgb/Bgblob450").b < get_node("TV/blue_dial").degs / 360 * 1.05:
		get_node("TV/right_bulb").set_modulate(Color(0,0,1,1))
	else:
		get_node("TV/right_bulb").set_modulate(Color(1,1,1,1))
