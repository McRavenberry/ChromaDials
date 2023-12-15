extends Panel


var time: float = 0.0
var minutes: int = 0
var seconds: int = 0
var msec: int = 0

func _process(delta) -> void:
	time += delta
	msec = fmod(time, 1) * 100
	seconds = fmod(time, 60)
	minutes = fmod(time, 3600) / 60
	$min.text = "%02d:" % minutes
	$min/sec.text = "%02d." % seconds
	$min/milli.text = "%02d" % msec

func stop() -> void:
	set_process(false)

func start() -> void:
	set_process(true)
	
func get_time_formatted() -> String:
	return "%02d:%02d.%03d" % [minutes, seconds, msec]
