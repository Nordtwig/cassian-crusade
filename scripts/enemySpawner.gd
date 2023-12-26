extends Node2D

signal enemySpawned(enemyInstance)
signal pathEnemySpawned(pathEnemyInstance)
var enemyScene = preload("res://scenes/enemy.tscn")
var pathEnemyScene = preload("res://scenes/enemy_path.tscn")

@onready var spawnPositions = $SpawnPositions

func spawnEnemy():
	var spawnPositionsArray = spawnPositions.get_children()
	var randomSpawnPosition = spawnPositionsArray.pick_random()

	var enemyInstance = enemyScene.instantiate()
	emit_signal("enemySpawned", enemyInstance)
	enemyInstance.global_position = Vector2(randomSpawnPosition.global_position)

func _on_timer_timeout():
	spawnEnemy()

func _on_path_enemy_timer_timeout():
	spawn_path_enemy()

func spawn_path_enemy():
	var pathEnemyInstance = pathEnemyScene.instantiate()
	emit_signal("pathEnemySpawned", pathEnemyInstance)
