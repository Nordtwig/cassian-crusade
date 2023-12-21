extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	global_position.x -= 50 * delta

func die():
	queue_free()