extends CharacterBody2D

@export var speed = 200

var rocketScene = preload("res://scenes/plasmaBolt.tscn")

func _process(delta):
	if Input.is_action_just_pressed("Shoot"):
		shoot()

func _physics_process(delta):
	velocity = Vector2(0, 0)
	if Input.is_action_pressed("Right"):
		velocity.x = speed
	if Input.is_action_pressed("Left"):
		velocity.x = -speed	
	if Input.is_action_pressed("Up"):
		velocity.y = -speed
	if Input.is_action_pressed("Down"):
		velocity.y = speed
	move_and_slide()

	var screenSize = get_viewport_rect().size
	global_position = global_position.clamp(Vector2(0,0), screenSize)

func shoot():
	var rocketInstance = rocketScene.instantiate()
	get_node("/root/Game/Projectiles").add_child(rocketInstance)
	rocketInstance.spawn(Vector2(global_position.x + 50, global_position.y))
