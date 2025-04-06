class_name class_grid_manager
extends Node

var hex_preload = preload("res://Scenes/basicHex.tscn")

func _ready() -> void:
	print("Grid Manager loaded.")

func test() -> void:
	print("Test func called.")

func spawnHex(gridLocation : Vector2i, newHexType : G.hexType):
	var newHex : class_hex = hex_preload.instantiate()
	newHex.gridLocation = gridLocation
	newHex.type = newHexType
	add_child(newHex)

func spawnMultiHex(hexDataArray : Array):
	for value : Vector3i in hexDataArray:
		spawnHex(Vector2i(value.x,value.y),value.z)
