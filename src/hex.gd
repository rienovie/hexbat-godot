class_name class_hex
extends Node

@export var gridLocation : Vector2

func _ready() -> void:
	self.global_transform.origin = Vector3(G.gridTranslate.x * gridLocation.x,0,G.gridTranslate.y * gridLocation.y)
	print(gridLocation)

