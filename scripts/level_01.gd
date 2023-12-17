extends Node2D

var color_num = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	if not %pause.status:
		print("off")
		get_node("time_display/timer").stop()
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
		var base_r = fmod(bg.bg_r + 0.5, 1)
		var base_g = fmod(bg.bg_g + 0.5, 1)
		var base_b = fmod(bg.bg_b + 0.5, 1)
		get_node("base").set_modulate(Color(base_r,base_g,base_b))
#	$target_color.b = 100

	# Lights up the bulbs if the dials are +/- 5% of background color
	if get_node("TV/red_dial").red:
		get_node("TV/left_bulb").set_modulate(Color(1,0,0,1))
#		$audio/matched.play()
	else:
		get_node("TV/left_bulb").set_modulate(Color(1,1,1,1))
		
	if get_node("TV/green_dial").green:
		get_node("TV/center_bulb").set_modulate(Color(0,1,0,1))
#		$audio/matched.play()
	else:
		get_node("TV/center_bulb").set_modulate(Color(1,1,1,1))
		
	if get_node("TV/blue_dial").blue:
		get_node("TV/right_bulb").set_modulate(Color(0,0,1,1))
#		$audio/matched.play()
	else:
		get_node("TV/right_bulb").set_modulate(Color(1,1,1,1))
		
	if get_node("TV/red_dial").red and get_node("TV/green_dial").green and get_node("TV/blue_dial").blue:
		if not get_node("TV/red_dial").rrun and not get_node("TV/green_dial").grun and not get_node("TV/blue_dial").brun:
			color_num += 1
			# change the bg color and autostart the dials spinning again
			if color_num < bg.colors.size():
				bg.bg_color = bg.colors[color_num]
				print(bg.bg_color)
				bg.bg_r = bg.bg_color.r
				bg.bg_g = bg.bg_color.g
				bg.bg_b = bg.bg_color.b
				get_node("TV/red_dial").rrun = true
				get_node("TV/green_dial").grun = true
				get_node("TV/blue_dial").brun = true
			else:
				bg.is_game_over = true
				get_tree().change_scene_to_file("res://gameover.tscn")
#				get_tree().quit()
			
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
		get_node("time_display/timer").set_process(false)
		get_node("time_display/timer").stop()
		get_node("TV/red_dial").rrun = false
		get_node("TV/green_dial").grun = false
		get_node("TV/blue_dial").brun = false
		get_node("")
		get_node("TV/red_dial").rclickable = false
		get_node("TV/green_dial").gclickable = false
		get_node("TV/blue_dial").bclickable = false
	else:
		print("off")
		%pause.status = true
		%pause.text = "PAUSE"
		get_node("time_display/timer").set_process(true)
		get_node("time_display/timer").start()
		get_node("TV/red_dial").rrun = true
		get_node("TV/green_dial").grun = true
		get_node("TV/blue_dial").brun = true
		get_node("TV/red_dial").rclickable = true
		get_node("TV/green_dial").gclickable = true
		get_node("TV/blue_dial").bclickable = true
#	%timer.stop()
#	%pause.text = "START" if %pause.pressed else "STOP"
