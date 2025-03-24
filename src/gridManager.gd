class_name class_grid_manager
extends Node

var hex_preload = preload("res://Scenes/basicHex.tscn")

func _ready() -> void:
	print("Grid Manager loaded.")

func test() -> void:
	print("Test func called.")

func spawnHex(gridLocation : Vector2):
	var newHex : class_hex = hex_preload.instantiate()
	newHex.gridLocation = gridLocation
	add_child(newHex)
