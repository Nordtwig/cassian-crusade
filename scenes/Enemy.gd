extends Node2D

@export var speed : float = 50

var Bullet = preload("res://scenes/Bullet.tscn")

func _process(delta):
	position.y += speed * delta

func _on_area_2d_area_entered(area:Area2D):
	print(area.get_groups()[0])
	if area.is_in_group("Player"):
		queue_free()	

func _on_shot_timer_timeout():
	Shoot()

func Shoot():
	var bullet = Bullet.instantiate()
	bullet.Start(global_position, "Enemy", 1)
	get_tree().root.add_child(bullet)
