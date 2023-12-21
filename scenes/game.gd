extends Node2D

func _on_enemy_death_zone_area_entered(area:Area2D):
	area.die()