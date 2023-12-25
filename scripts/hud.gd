extends Control

@onready var score = $Score

func setScoreLabel(newScore):
	score.text = "SCR: " + str(newScore)
