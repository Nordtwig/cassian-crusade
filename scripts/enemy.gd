extends Area2D

signal died

func _process(delta):
	global_position.x -= 50 * delta

func die():
	emit_signal("died")
	queue_free()


func _on_body_entered(body:Node2D):
	body.takeDamage()
	die()

	