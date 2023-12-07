extends Node2D



func _on_area_2d_area_entered(area:Area2D):
	if area.is_in_group("Player"):
		queue_free()	
