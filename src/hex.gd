class_name class_hex
extends Node

@export_category("References")
@export var meshInst : MeshInstance3D
@export var gridLocationLabel : Label3D

@export_category("Values")
@export var gridLocation : Vector2i
@export var type : G.hexType = G.hexType.Null

@export_category("Debug")
@export var debug_Location : bool = false

func _ready() -> void:
	assert(type and type != G.hexType.Null)
	assert(meshInst)
	assert(gridLocationLabel)

	updateLocation()
	updateTexture()

func setHexType(setTo : G.hexType):
	type = setTo
	updateTexture()

func updateLocation():
	self.global_transform.origin = Vector3(G.gridTranslate.x * gridLocation.x,0,G.gridTranslate.y * gridLocation.y)
	gridLocationLabel.text = str(gridLocation)

func updateTexture():
	meshInst.set_surface_override_material(2,L.getTileMaterial(type))
	if debug_Location:
		gridLocationLabel.visible = true
	else:
		gridLocationLabel.visible = false
