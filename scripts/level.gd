extends Node3D
class_name Level

@export var modules: Array[PackedScene] = []
var amt = 15
var rng = RandomNumberGenerator.new()
var offset = 5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for n in range(amt):
		spawnmodules(n*offset)



func spawnmodules(n):
	var rng = RandomNumberGenerator.new()
	rng.randomize()

	var num = rng.randi_range(0, modules.size() - 1)
	var instance = modules[num].instantiate()

	instance.position.x = n
	instance.lvl = self   # pass reference
	add_child(instance)
