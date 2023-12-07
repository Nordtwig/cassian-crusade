extends Node2D

@export var speed : float = 50

func _process(delta):
	position.y += speed * delta

func _on_area_2d_area_entered(area:Area2D):
	if area.is_in_group("Player"):
		queue_free()	


