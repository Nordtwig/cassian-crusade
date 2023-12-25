extends Node2D

var lives = 3
var score = 0

@onready var player = $Player
@onready var hud = $UI/HUD

func _ready():
	hud.setScoreLabel(score)

func _on_enemy_death_zone_area_entered(area:Area2D):
	area.die()

func _on_player_took_damage():
	lives -= 1
	if lives == 0:
		print("Game Over")
		player.die()
	print(lives)

func _on_enemy_spawned(enemyInstance:Variant):
	enemyInstance.connect("died", _on_enemy_died)
	get_node("Enemies").add_child(enemyInstance)

func _on_enemy_died():
	score += 100
	hud.setScoreLabel(score)
