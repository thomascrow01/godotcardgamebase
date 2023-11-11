#	Menu.gd
#   Written by Thomas Crow
#	Creation date: 12/11/2023
#	Last updated: 12/11/2023
# Script for the main menu

extends Node

# to do:
#	think of how I should have a generic way of setting up the buttons and then having their on pressed take you to their scene
# maybe a String to Scene dictionary that is looped through?

# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_button_pressed(): # not sure why this is freezing
	get_tree().change_scene("res://getdekt/scenes/getdektmenu.tscn") # change this to be generic later


func _on_quitbutton_pressed():
	get_tree().quit()
