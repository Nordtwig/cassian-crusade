extends Node2D

@export var lateralSpeed : float = 20.5

func _process(delta):
	if Input.is_action_pressed("Left"):
		position.x -= lateralSpeed * delta
	if Input.is_action_pressed("Right"):
		position.x += lateralSpeed * delta
