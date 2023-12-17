extends Node
#@onready var musicplayer = $mp.play()

var is_game_over = false
const SAVEFILE = "user://save.dat"
var color_list:Array = [
	"ALICE_BLUE",
	"ANTIQUE_WHITE",
	"AQUA",
	"AQUAMARINE",
	"AZURE",
	"BEIGE",
	"BISQUE",
	"BLACK",
	"BLANCHED_ALMOND",
	"BLUE",
	"BLUE_VIOLET",
	"BROWN",
	"BURLYWOOD",
	"CADET_BLUE",
	"CHARTREUSE",
	"CHOCOLATE",
	"CORAL",
	"CORNFLOWER_BLUE",
	"CORNSILK",
	"CRIMSON",
	"CYAN",
	"DARK_BLUE",
	"DARK_CYAN",
	"DARK_GOLDENROD",
	"DARK_GRAY",
	"DARK_GREEN",
	"DARK_KHAKI",
	"DARK_MAGENTA",
	"DARK_OLIVE_GREEN",
	"DARK_ORANGE",
	"DARK_ORCHID",
	"DARK_RED",
	"DARK_SALMON",
	"DARK_SEA_GREEN",
	"DARK_SLATE_BLUE",
	"DARK_SLATE_GRAY",
	"DARK_TURQUOISE",
	"DARK_VIOLET",
	"DEEP_PINK",
	"DEEP_SKY_BLUE",
	"DIM_GRAY",
	"DODGER_BLUE",
	"FIREBRICK",
	"FLORAL_WHITE",
	"FOREST_GREEN",
	"FUCHSIA",
	"GAINSBORO",
	"GHOST_WHITE",
	"GOLD",
	"GOLDENROD",
	"GRAY",
	"GREEN",
	"GREEN_YELLOW",
	"HONEYDEW",
	"HOT_PINK",
	"INDIAN_RED",
	"INDIGO",
	"IVORY",
	"KHAKI",
	"LAVENDER",
	"LAVENDER_BLUSH",
	"LAWN_GREEN",
	"LEMON_CHIFFON",
	"LIGHT_BLUE",
	"LIGHT_CORAL",
	"LIGHT_CYAN",
	"LIGHT_GOLDENROD",
	"LIGHT_GRAY",
	"LIGHT_GREEN",
	"LIGHT_PINK",
	"LIGHT_SALMON",
	"LIGHT_SEA_GREEN",
	"LIGHT_SKY_BLUE",
	"LIGHT_SLATE_GRAY",
	"LIGHT_STEEL_BLUE",
	"LIGHT_YELLOW",
	"LIME",
	"LIME_GREEN",
	"LINEN",
	"MAGENTA",
	"MAROON",
	"MEDIUM_AQUAMARINE",
	"MEDIUM_BLUE",
	"MEDIUM_ORCHID",
	"MEDIUM_PURPLE",
	"MEDIUM_SEA_GREEN",
	"MEDIUM_SLATE_BLUE",
	"MEDIUM_SPRING_GREEN",
	"MEDIUM_TURQUOISE",
	"MEDIUM_VIOLET_RED",
	"MIDNIGHT_BLUE",
	"MINT_CREAM",
	"MISTY_ROSE",
	"MOCCASIN",
	"NAVAJO_WHITE",
	"NAVY_BLUE",
	"OLD_LACE",
	"OLIVE",
	"OLIVE_DRAB",
	"ORANGE",
	"ORANGE_RED",
	"ORCHID",
	"PALE_GOLDENROD",
	"PALE_GREEN",
	"PALE_TURQUOISE",
	"PALE_VIOLET_RED",
	"PAPAYA_WHIP",
	"PEACH_PUFF",
	"PERU",
	"PINK",
	"PLUM",
	"POWDER_BLUE",
	"PURPLE",
	"REBECCA_PURPLE",
	"RED",
	"ROSY_BROWN",
	"ROYAL_BLUE",
	"SADDLE_BROWN",
	"SALMON",
	"SANDY_BROWN",
	"SEA_GREEN",
	"SEASHELL",
	"SIENNA",
	"SILVER",
	"SKY_BLUE",
	"SLATE_BLUE",
	"SLATE_GRAY",
	"SNOW",
	"SPRING_GREEN",
	"STEEL_BLUE",
	"TAN",
	"TEAL",
	"THISTLE",
	"TOMATO",
	"TRANSPARENT",
	"TURQUOISE",
	"VIOLET",
	"WEB_GRAY",
	"WEB_GREEN",
	"WEB_MAROON",
	"WEB_PURPLE",
	"WHEAT",
	"WHITE",
	"WHITE_SMOKE",
	"YELLOW",
	"YELLOW_GREEN"
]
var color:Array = [Color(color_list[randi() % color_list.size()], 255)]

var colors:Array = [
	Color("BLUE_VIOLET",255), 
	Color("DARK_SEA_GREEN",255), 
	Color("DARK_SLATE_BLUE",255),
	Color("GOLDENROD",255),
	Color("INDIAN_RED",255)
]

var bg_color = colors[0]
var bg_r = bg_color.r
var bg_g = bg_color.g
var bg_b = bg_color.b

var minutes = 0
var seconds = 0
var msec = 0
var end_time = 0

var best_minutes = 0
var best_seconds = 0
var best_msec = 0
var best_end_time = 999999999
#func _ready():
#	for i in range(4):
#		var temp = color_list[randi() % color_list.size()]
#		colors.append(Color(temp, 255))
#	print(bg_color)

func save():
	var file = FileAccess.open(SAVEFILE, FileAccess.WRITE)
	file.store_var(best_minutes)
	file.store_var(best_seconds)
	file.store_var(best_msec)
	file.store_var(best_end_time)
	
func load():
	if FileAccess.file_exists(SAVEFILE):
		var file = FileAccess.open(SAVEFILE, FileAccess.READ)
		best_minutes = file.get_var(best_minutes)
		best_seconds = file.get_var(best_seconds)
		best_msec = file.get_var(best_msec)
		best_end_time = file.get_var(best_end_time)
	else:
		print("no data saved...")
		best_minutes = 0
		best_seconds = 0
		best_msec = 0
		best_end_time = 999999999
