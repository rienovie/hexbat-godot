extends Node

func _ready() -> void:
	print("State loaded.")

	G.loadGridManager()

	var testGrid : Array = [
		Vector3i(0,0,G.hexType.Grass),
		Vector3i(-1,-1,G.hexType.Mud),
		Vector3i(0,2,G.hexType.Sand),
		Vector3i(0,-2,G.hexType.Corrupt),
		Vector3i(3,-3,G.hexType.Molten),
		Vector3i(-3,3,G.hexType.Spawn)
	]
	G.GM.spawnMultiHex(testGrid)
