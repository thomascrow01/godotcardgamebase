#	Deck.gd
#   Written by Thomas Crow
#	Creation date: 16/11/2023
#	Last updated: 16/11/2023
# Class to store a deck of cards and have functions relaated to it

var cards : Array

func shuffle():
	#huh pretty handy, will need to override later anyway
	cards.shuffle()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
