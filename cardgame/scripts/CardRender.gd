#	CardRender.gd
#   Written by Thomas Crow
#	Creation date: 12/11/2023
#	Last updated: 16/11/2023
# This is a base for rendering cards

extends Node

var node_game : Node
var node_hud : Node2D

#var card : Card

var hidden : bool
var invisible : bool

# Called when the node enters the scene tree for the first time.
func _ready():
	node_game = get_node("../Node3D") as Node
	node_hud = get_node("../Node2D") as Node2D
	
	var material : StandardMaterial3D = (node_game.get_node("MeshInstance3D") as MeshInstance3D).get_surface_override_material(0)
	material.albedo_texture = load("res://icon.svg")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	(node_game as Node3D).transform.rotated(Vector3(1,0,0), 45.0)
