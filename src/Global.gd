extends Node

# This is used for variables, enums, and global functions
# Classes that are not autoloaded but are globally accesed

@export_category("Main Classes")
@export var GM : class_grid_manager :
	get:
		assert(GM,"Attempted to get Grid Manger before loaded!")
		return GM

@export_category("System Settings")
@export var gridTranslate : Vector2 = Vector2(1,-1.75)

enum hexType {Null,Spawn,Grass,Mud,Molten,Corrupt,Sand}

var cam_preload = preload("res://Assets/External/3D-RTS-Camera/addons/3d_rts_camera/rtscam.tscn")

func _ready() -> void:
	add_child(cam_preload.instantiate())

func loadGridManager() -> void:
	GM = load("res://src/gridManager.gd").new()
	add_child(GM)
