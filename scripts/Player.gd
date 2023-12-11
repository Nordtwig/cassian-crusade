extends Node2D

@export var lateralSpeed : float = 20.5

var Bullet = preload("res://scenes/Bullet.tscn")
var readyToShoot = false

func _process(delta):
	if Input.is_action_pressed("Left"):
		position.x -= lateralSpeed * delta
	if Input.is_action_pressed("Right"):
		position.x += lateralSpeed * delta
	if readyToShoot:
		Shoot($Muzzle1.global_position)
		Shoot($Muzzle2.global_position)
		readyToShoot = false
		$ShotTimer.start()

func Shoot(muzzlePosition) :
	var bullet = Bullet.instantiate()
	bullet.Start(muzzlePosition, "Player", -1)
	get_tree().root.add_child(bullet)



func _on_shot_timer_timeout():
	readyToShoot = true
