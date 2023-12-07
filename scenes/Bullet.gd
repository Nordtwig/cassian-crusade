extends Node2D

@export var speed : float = 50

func Start(_position):
	position = _position

func _process(delta):
	position.y -= speed * delta