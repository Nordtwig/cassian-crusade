extends Node2D

var lives = 3
var score = 0

@onready var player = $Player
@onready var hud = $UI/HUD
@onready var ui = $UI

@onready var enemyHitSound = $EnemyHitSound
@onready var playerTakeDamageSound = $PlayerTakeDamageSound

var gosScene = preload("res://scenes/game_over_screen.tscn")

func _ready():
	hud.setScoreLabel(score)
	hud.setLives(lives)

func _on_enemy_death_zone_area_entered(area:Area2D):
	area.queue_free()

func _on_player_took_damage():
	lives -= 1
	playerTakeDamageSound.play()
	hud.setLives(lives)
	if lives == 0:
		print("Game Over")
		player.die()

		await get_tree().create_timer(1.5).timeout

		var gos = gosScene.instantiate()
		gos.set_score(score)
		ui.add_child(gos)

func _on_enemy_spawned(enemyInstance:Variant):
	enemyInstance.connect("died", _on_enemy_died)
	get_node("Enemies").add_child(enemyInstance)

func _on_enemy_died():
	score += 100
	hud.setScoreLabel(score)
	enemyHitSound.play()
