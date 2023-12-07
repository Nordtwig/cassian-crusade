extends Node2D

@export var speed : float = 50

func Start(_position):
	position = _position

func _process(delta):
	position.y -= speed * delta

func _on_bullet_collider_area_entered(area:Area2D):
	if	area.is_in_group("Enemy"):
		queue_free()	
