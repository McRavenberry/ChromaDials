extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$target_color.b = 100
	
	if $player_color.r <= 0:
		$player_color.r = 255
	$player_color.r -= int(delta*100)
	print($player_color.r)
