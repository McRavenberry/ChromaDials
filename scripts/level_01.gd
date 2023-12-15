extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	if not %pause.status:
		print("off")
		%timer.stop()
#		%pause.status = false
#		%timer.start()
#	else:
#		print("off")
#		%pause.status = true
#		%timer.stop()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	
	# Updates the screen color based on the dials
	get_node("TV/screen").r = get_node("TV/red_dial").degs
	get_node("TV/screen").g = get_node("TV/green_dial").degs
	get_node("TV/screen").b = get_node("TV/blue_dial").degs

	# Sets the background color
	for bgb in get_tree().get_nodes_in_group("bg"):
		bgb.r = bg.bg_r
		bgb.g = bg.bg_g
		bgb.b = bg.bg_b
#	$target_color.b = 100

	# Lights up the bulbs if the dials are +/- 5% of background color
	if get_node("TV/red_dial").red:
		get_node("TV/left_bulb").set_modulate(Color(1,0,0,1))
	else:
		get_node("TV/left_bulb").set_modulate(Color(1,1,1,1))
		
	if get_node("TV/green_dial").green:
		get_node("TV/center_bulb").set_modulate(Color(0,1,0,1))
	else:
		get_node("TV/center_bulb").set_modulate(Color(1,1,1,1))
		
	if get_node("TV/blue_dial").blue:
		get_node("TV/right_bulb").set_modulate(Color(0,0,1,1))
	else:
		get_node("TV/right_bulb").set_modulate(Color(1,1,1,1))
		
	if get_node("TV/red_dial").red and get_node("TV/green_dial").green and get_node("TV/blue_dial").blue:
		if not get_node("TV/red_dial").rrun and not get_node("TV/green_dial").grun and not get_node("TV/blue_dial").brun:
			bg.bg_color = bg.colors[1]
			bg.bg_r = bg.bg_color.r
			bg.bg_g = bg.bg_color.g
			bg.bg_b = bg.bg_color.b
			
			for bgb in get_tree().get_nodes_in_group("bg"):
				bgb.r = bg.bg_r
				bgb.g = bg.bg_g
				bgb.b = bg.bg_b
	
#	%pause.pressed().connect(func ():
#		%pause.text = "START" if %pause.pressed else "STOP"
#		)


func _on_pause_pressed():
	if %pause.status:
		print("on")
		%pause.status = false
		%pause.text = "START"
		%timer.stop()
	else:
		print("off")
		%pause.status = true
		%pause.text = "STOP"
		%timer.start()
#	%timer.stop()
#	%pause.text = "START" if %pause.pressed else "STOP"
