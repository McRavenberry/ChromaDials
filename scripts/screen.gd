extends Sprite2D
#var r:float = 1.0
#var g:float = 1.0
#var b:float = 1.0
#var h:float = 359
#var s:float = 100
#var v:float = 100
#var a:float = 1

var colors:Array = [
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


var r:float = 1
var g:float = 1
var b:float = 1
var h:float = 359
var s:float = 100
var v:float = 100
var a:float = 1
#var rand_color = bg.bg_color
#var target_r = Color(rand_color).r
#var target_g = Color(rand_color).g
#var target_b = Color(rand_color).b

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_modulate(Color(r,g,b,255))
#	print(Color(rand_color,1).g)
	
#	set_modulate(Color.from_hsv(h,s,v,a))
#	h = get_node().degs
#	print(h)
#	print(Color.from_hsv(h,s,v,a))
