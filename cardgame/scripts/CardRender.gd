#	CardRender.gd
#   Written by Thomas Crow
#	Creation date: 12/11/2023
#	Last updated: 18/11/2023
# This is a base for rendering cards

extends Node

var node_game : Node
var node_hud : Node2D

#var card : Card

var hidden : bool # swap the details displayed on the card for something generic to hide information that should not be visible for gameplay reasons (cards in opponent's hands or cards that are face down)
var invisible : bool # make the card invisible, use this for if the card is not meant to be visible at all

func update_card() :
	pass

func toggle_hidden() :
	set_hidden(!hidden)
	
func set_hidden(state : bool) :
	hidden = state
	
	if hidden :
		node_game.get_node("Label3D").visible = true
		
		# DESIGN BETTER WAY OF DOING THE IMAGE
		# will have a field somewhere to have the generic face asset
		var material : StandardMaterial3D = (node_game.get_node("MeshInstance3D") as MeshInstance3D).get_surface_override_material(0)
		material.albedo_texture = load("res://icon.svg")
	else :
		node_game.get_node("Label3D").visible = false
		
		# ALSO MAKE FUNCTION FOR SETTING IMAGE
		# decide on the Card.gd Key for the image asset
		var material : StandardMaterial3D = (node_game.get_node("MeshInstance3D") as MeshInstance3D).get_surface_override_material(0)
		material.albedo_texture = load("res://icon.svg")
		
		update_card()
	
func toggle_invisible() :
	set_invisible(!invisible)
	
func set_invisible(state : bool) :
	invisible = state
	
	if invisible :
		node_game.visible = false
	else :
		node_game.visible = true

# Called when the node enters the scene tree for the first time.
func _ready():
	node_game = get_node("../Node3D") as Node
	node_hud = get_node("../Node2D") as Node2D
	
	var material : StandardMaterial3D = (node_game.get_node("MeshInstance3D") as MeshInstance3D).get_surface_override_material(0)
	material.albedo_texture = load("res://icon.svg")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	node_game.rotate(Vector3(0, 0, 0), 1) # ok I give up on this rotating stuff for now
