extends Node2D

func _process(delta):
	position.x = get_global_mouse_position().x
