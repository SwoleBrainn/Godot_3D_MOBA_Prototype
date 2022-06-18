extends Position3D

var location = Vector3()

var packed_scene = [
	preload("res://Scenes/Minion.tscn"),
	preload("res://Scenes/Minion.tscn")
	
]

func _on_TimerSpawnerTest2_timeout():
	randomize()
	var x= randi() % packed_scene.size()
	location.x = rand_range(-54,-55)
	location.z = rand_range(54,55)
	location.y = rand_range(0,0)
	var scene = packed_scene[x].instance()
	scene.set_translation(location)
	add_child(scene)
