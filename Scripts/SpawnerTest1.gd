extends Position3D

export(PackedScene) var Minion
onready var timer = $TimerSpawnerTest1

export var num_enemies = 1
export var second_between_spawns = 4

func _ready():
	timer.wait_time = second_between_spawns
	timer.start()

func _on_TimerSpawnerTest1_timeout():
		var minion = Minion.instance()
		var scene_root = get_parent()
		scene_root.add_child(minion)
		minion.translate(Vector3(-50, 0, 50))
		
