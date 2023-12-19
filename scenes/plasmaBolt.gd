extends Area2D

@export var bulletSpeed = 5

func spawn(position):
	global_position = position

func _physics_process(delta):
	global_position.x += bulletSpeed * delta
