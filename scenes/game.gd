extends Node2D

var lives = 3

@onready var player = $Player

func _on_enemy_death_zone_area_entered(area:Area2D):
	area.die()


func _on_player_took_damage():
	lives -= 1
	if lives == 0:
		print("Game Over")
		player.die()
	print(lives)