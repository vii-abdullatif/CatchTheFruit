class_name GameOver
extends CanvasLayer

@onready var score: Label = %Score
@onready var high_score: Label = %HighScore

func set_score(n : int):
	score.text = "Final Score: " + str(n)
	if n > Global.save_data.high_score:
		high_score.visible = true
		Global.save_data.high_score = n
		Global.save_data.save()
	else:
		high_score.visible = false

func _on_button_pressed() -> void:
	get_tree().reload_current_scene()
