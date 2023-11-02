#	Card.gd
#   Written by Thomas Crow
#	Creation date: 2/11/2023
#	Last updated: 3/11/2023
# This is being used to store card data

# reference for dictionaries https://docs.godotengine.org/en/stable/classes/class_dictionary.html

var d = {} # this is an empty dictionary

func get_value(key_name):
	if key_name in d:
		return d[key_name]
		
	return null

# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
