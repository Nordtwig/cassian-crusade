extends Area2D

@export var bulletSpeed = 5

func spawn(position):
	global_position = position

func _physics_process(delta):
	global_position.x += bulletSpeed * delta


func _on_visible_notifier_screen_exited():
	queue_free()


func _on_area_entered(area:Area2D):
	area.die()
	queue_free()