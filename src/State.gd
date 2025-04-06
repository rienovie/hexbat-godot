extends Node

func _ready() -> void:
	print("State loaded.")

	G.loadGridManager()

	var testGrid : Array = [
		Vector3i(0,0,G.hexType.Grass),
		Vector3i(-1,-1,G.hexType.Mud)
	]
	G.GM.spawnMultiHex(testGrid)
