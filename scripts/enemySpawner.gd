extends Node2D

var enemyScene = preload("res://scenes/enemy.tscn")

@onready var spawnPositions = $SpawnPositions

func spawnEnemy():
	var spawnPositionsArray = spawnPositions.get_children()
	var randomSpawnPosition = spawnPositionsArray.pick_random()

	var enemyInstance = enemyScene.instantiate()
	get_node("/root/Game/Enemies").add_child(enemyInstance)
	enemyInstance.global_position = Vector2(randomSpawnPosition.global_position)

func _on_timer_timeout():
	spawnEnemy()
