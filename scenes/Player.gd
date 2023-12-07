extends Node2D

@export var lateralSpeed : float = 20.5

var Bullet = preload("res://scenes/Bullet.tscn")
var readyToShoot = false

func _process(delta):
	if Input.is_action_pressed("Left"):
		position.x -= lateralSpeed * delta
	if Input.is_action_pressed("Right"):
		position.x += lateralSpeed * delta
	if Input.is_action_pressed("Shoot") and readyToShoot:
		Shoot()
		readyToShoot = false
		$ShotTimer.start()

func Shoot() :
	var bullet = Bullet.instantiate()
	bullet.Start(global_position)
	get_tree().root.add_child(bullet)



func _on_shot_timer_timeout():
	readyToShoot = true