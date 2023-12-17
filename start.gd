extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
#	bg.save()
	get_node("bgb/Bgblob450").set_modulate(bg.color[0])
	var base_r = fmod(bg.color[0].r + 0.5, 1)
	var base_g = fmod(bg.color[0].g + 0.5, 1)
	var base_b = fmod(bg.color[0].b + 0.5, 1)
	get_node("base").set_modulate(Color(base_r,base_g,base_b))
	
	get_node("TV/screen").set_modulate(Color(0,0,0,1))
	get_node("TV/left_bulb").set_modulate(Color(1,0,0,1))
	get_node("TV/center_bulb").set_modulate(Color(0,1,0,1))
	get_node("TV/right_bulb").set_modulate(Color(0,0,1,1))
	
	bg.load()
	$btt/bt.text = "%02d:%02d.%03d" % [bg.best_minutes, bg.best_seconds, bg.best_msec]
	
#	get_node("base").set_modulate()
	



func _on_start_pressed():
	get_tree().change_scene_to_file("res://level_01.tscn")
