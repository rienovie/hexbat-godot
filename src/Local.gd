extends Node

# This is for values for the local player
# basically the save/load values

var mat_tile_grass : ShaderMaterial = preload("res://Assets/Materials/Tiles/Patterned/tile_grass_patterned.tres")
var mat_tile_spawn : ShaderMaterial = preload("res://Assets/Materials/Tiles/Patterned/tile_spawn_patterned.tres")
var mat_tile_mud : ShaderMaterial = preload("res://Assets/Materials/Tiles/Patterned/tile_mud_patterned.tres")
var mat_tile_molten : ShaderMaterial = preload("res://Assets/Materials/Tiles/Patterned/tile_molten_patterned.tres")
var mat_tile_corrupt : ShaderMaterial = preload("res://Assets/Materials/Tiles/Patterned/tile_corrupt_patterned.tres")
var mat_tile_sand : ShaderMaterial = preload("res://Assets/Materials/Tiles/Patterned/tile_sand_patterned.tres")

func _ready() -> void:
	print("Local loaded.")

func getTileMaterial(whichTile : G.hexType) -> ShaderMaterial:
	match whichTile:
		G.hexType.Spawn:
			return mat_tile_spawn
		G.hexType.Grass:
			return mat_tile_grass
		G.hexType.Mud:
			return mat_tile_mud
		G.hexType.Corrupt:
			return mat_tile_corrupt
		G.hexType.Molten:
			return mat_tile_molten
		G.hexType.Sand:
			return mat_tile_sand
		_:
			return null
