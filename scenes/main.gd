class_name Main
extends Node2D

var bombs_scene : PackedScene = load("res://scenes/bomb.tscn")
var fruits_scene : PackedScene = load("res://scenes/fruits.tscn")

@onready var hud: HUD = %HUD

var score : int:
	get:
		return score
	set(value):
		score = value
		hud.update_score(value)

func _ready() -> void:
	score = 0
	Global.lives = 3

func _on_timer_timeout() -> void:
	var fruits = fruits_scene.instantiate()
	$Fruits.add_child(fruits)

func _on_bomb_timer_timeout() -> void:
	var bombs = bombs_scene.instantiate()
	$Bombs.add_child(bombs)
