extends Node2D

func _ready() -> void:
	Global.lives_count = 3

func _physics_process(_delta: float) -> void:
	if Global.lives_count == 2:
		$Life3.hide()
	if Global.lives_count == 1:
		$Life2.hide()
	if Global.lives_count == 0:
		pass
