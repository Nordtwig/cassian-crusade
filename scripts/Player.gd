extends CharacterBody2D

var speed = 200

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