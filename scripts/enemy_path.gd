extends Path2D

@onready var pathFollow = $PathFollow2D
@onready var enemy = $PathFollow2D/Enemy

func _ready():
	pathFollow.set_progress_ratio(1)

func _process(delta):
	pathFollow.progress_ratio -= 0.25 * delta
	if pathFollow.progress_ratio <= 0:
		queue_free()