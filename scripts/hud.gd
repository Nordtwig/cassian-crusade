extends Control

@onready var score = $Score
@onready var lives = $LivesLeft

func setScoreLabel(newScore):
	score.text = "SCR: " + str(newScore)

func setLives(amount):
	lives.text = str(amount)
