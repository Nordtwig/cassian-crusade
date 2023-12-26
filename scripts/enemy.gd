extends Area2D

signal died

@export var speed = 50

func _process(delta):
	global_position.x -= speed * delta

func die():
	emit_signal("died")
	queue_free()


func _on_body_entered(body:Node2D):
	body.takeDamage()
	die()

	