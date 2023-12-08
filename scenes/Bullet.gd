extends Node2D

@export var speed : float = 50

var shootingDirection = -1

func Start(_position, ownerGroup, direction):
	position = _position
	add_to_group(ownerGroup)
	shootingDirection = direction


func _process(delta):
	position.y += (speed * shootingDirection) * delta

func _on_bullet_collider_area_entered(area:Area2D):
	if	!area.is_in_group(get_groups()[0]):
		queue_free()	
