extends Node2D

signal enemySpawned(enemyInstance)
var enemyScene = preload("res://scenes/enemy.tscn")

@onready var spawnPositions = $SpawnPositions

func spawnEnemy():
	var spawnPositionsArray = spawnPositions.get_children()
	var randomSpawnPosition = spawnPositionsArray.pick_random()

	var enemyInstance = enemyScene.instantiate()
	emit_signal("enemySpawned", enemyInstance)
	enemyInstance.global_position = Vector2(randomSpawnPosition.global_position)

func _on_timer_timeout():
	spawnEnemy()
