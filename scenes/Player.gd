extends Node2D

func _process(delta):
	if Input.is_action_pressed("Left"):
		position.x -= 1
	if Input.is_action_pressed("Right"):
		position.x += 1
