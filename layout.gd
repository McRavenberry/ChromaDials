extends GridContainer
#var ctime = $current_time.text
var minutes = bg.minutes
var seconds = bg.seconds
var msec = bg.msec

# Called when the node enters the scene tree for the first time.
func _ready():
	bg.loadscore()
	%bg_color.set_modulate(Color(bg.colors[randi() % bg.colors.size()], 255))
	if bg.is_game_over:
		$current_time.text = "%02d:%02d.%03d" % [minutes, seconds, msec]
		var end_time = "%02d%02d%03d" % [minutes, seconds, msec]
		end_time = end_time.to_int()
		print(end_time)
		print(bg.best_end_time)
#		print(end_time.is_valid_int())
#		print(bg.best_end_time.is_valid_int())
		if end_time < bg.best_end_time: 
			bg.best_end_time = end_time
			bg.best_minutes = minutes
			bg.best_seconds = seconds
			bg.best_msec = msec
			$best_time.text = "%02d:%02d.%03d" % [bg.best_minutes, bg.best_seconds, bg.best_msec]
			$new_hs.show()
			%newhighscore.play()
			bg.savescore()
		else:
			$new_hs.hide()
			$best_time.text = "%02d:%02d.%03d" % [bg.best_minutes, bg.best_seconds, bg.best_msec]



func _on_try_again_pressed():
	get_tree().change_scene_to_file("res://level_01.tscn")
	



func _on_quit_pressed():
	get_tree().quit()
