extends Node

@export_category("Main Classes")
@export var GM : class_grid_manager

@export_category("System Settings")
@export var gridTranslate : Vector2 = Vector2(1,-1.75)


var cam_preload = preload("res://Assets/External/3D-RTS-Camera/addons/3d_rts_camera/rtscam.tscn")

func _ready() -> void:
	if !GM:
		GM = load("res://src/gridManager.gd").new()
		add_child(GM)

	add_child(cam_preload.instantiate())

	GM.test()

	var waitTime = 0.25

	GM.spawnHex(Vector2(0,0))
	await get_tree().create_timer(waitTime).timeout
	GM.spawnHex(Vector2(1,1))
	await get_tree().create_timer(waitTime).timeout
	GM.spawnHex(Vector2(-1,-1))
	await get_tree().create_timer(waitTime).timeout
	GM.spawnHex(Vector2(0,2))
	await get_tree().create_timer(waitTime).timeout
	GM.spawnHex(Vector2(0,-2))
	await get_tree().create_timer(waitTime).timeout
	GM.spawnHex(Vector2(-1,1))
	await get_tree().create_timer(waitTime).timeout
	GM.spawnHex(Vector2(1,-1))
	
