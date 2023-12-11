extends Node2D

@export var speed : float = 50

var shootingDirection = -1
var velocity = Vector2(0,0)

func Start(_position, ownerGroup, direction):
	position = _position
	add_to_group(ownerGroup)
	shootingDirection = direction
	velocity.y += direction
	rotation = velocity.angle()


func _process(delta):
	velocity = Vector2(0, speed * shootingDirection)
	position.y += velocity.y * delta
	rotation = velocity.angle()

func _on_bullet_collider_area_entered(area:Area2D):
	if	!area.is_in_group(get_groups()[0]):
		queue_free()	
