class_name class_hex
extends Node

@export var gridLocation : Vector2i
@export var type : G.hexType = G.hexType.Null

func _ready() -> void:
	# assert(gridLocation)
	# assert(type and type != G.hexType.Null)

	self.global_transform.origin = Vector3(G.gridTranslate.x * gridLocation.x,0,G.gridTranslate.y * gridLocation.y)
	print(gridLocation)

func setHexType(setTo : G.hexType):
	type = setTo
	updateTexture()

func updateTexture():
	pass
