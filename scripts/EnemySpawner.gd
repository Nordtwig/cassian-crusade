extends Node2D

var Enemy = preload("res://scenes/Enemy.tscn")
var rng = RandomNumberGenerator.new()

func _on_spawn_timer_timeout():
	var enemy = Enemy.instantiate()
	enemy.position.y = 0
	enemy.position.x = rng.randf_range(0.0, 500) 
	add_child(enemy)
	$SpawnTimer.start()
