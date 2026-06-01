extends Node3D

#modules.gd

var lvl: Level

var speed = 10
func _process(delta):
	position.x -= speed * delta

	if position.x < -20:
		if lvl:
			lvl.spawnmodules(position.x + (lvl.amt * lvl.offset))
		queue_free()	
