extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
#	bg.savescore()
	get_node("bgb/Bgblob450").set_modulate(bg.color[0])
	var base_r = fmod(bg.color[0].r + 0.5, 1)
	var base_g = fmod(bg.color[0].g + 0.5, 1)
	var base_b = fmod(bg.color[0].b + 0.5, 1)
	get_node("base").set_modulate(Color(base_r,base_g,base_b))
	
	get_node("TV/screen").set_modulate(Color(0,0,0,1))
	get_node("TV/left_bulb").set_modulate(Color(1,0,0,1))
	get_node("TV/center_bulb").set_modulate(Color(0,1,0,1))
	get_node("TV/right_bulb").set_modulate(Color(0,0,1,1))
	
	get_node("TV/red_dial").rrun = true
	get_node("TV/green_dial").grun = true
	get_node("TV/green_dial").gdirection = -1
	get_node("TV/blue_dial").brun = true
	get_node("TV/blue_dial").speed = 47
	
	bg.loadscore()
	$btt/bt.text = "%02d:%02d.%03d" % [bg.best_minutes, bg.best_seconds, bg.best_msec]
	
#	get_node("base").set_modulate()
	
func _process(delta):
	get_node("TV/screen").r = get_node("TV/red_dial").degs
	get_node("TV/screen").g = get_node("TV/green_dial").degs
	get_node("TV/screen").b = get_node("TV/blue_dial").degs

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

func _on_start_pressed():
	get_tree().change_scene_to_file("res://level_01.tscn")
