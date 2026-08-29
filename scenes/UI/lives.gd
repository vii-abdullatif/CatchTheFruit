extends Node2D

const gameover_scene: PackedScene = preload("res://scenes/UI/game_over.tscn")
var gameover_menu : GameOver

func _physics_process(_delta: float) -> void:
	if Global.lives == 2:
		$Life3.hide()
	if Global.lives == 1:
		$Life2.hide()
	if Global.lives == 0:
		gameover_menu = gameover_scene.instantiate() as GameOver
		add_child(gameover_menu)
		gameover_menu.set_score(get_tree().current_scene.score)
