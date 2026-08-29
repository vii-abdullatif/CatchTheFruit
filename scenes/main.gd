class_name Main
extends Node2D

var bombs_scene : PackedScene = load("res://scenes/bomb.tscn")
var fruits_scene : PackedScene = load("res://scenes/fruits.tscn")
var last_difficulty_score : int = 0

@onready var hud: HUD = %HUD
@onready var fruit_timer: Timer = $Timer
@onready var bomb_timer: Timer = $BombTimer

var score : int:
	get:
		return score
	set(value):
		score = value
		hud.update_score(value)

func _ready() -> void:
	score = 0
	Global.lives = 3

func _process(_delta: float) -> void:
	increase_diffculty()

func increase_diffculty() -> void:
	if Global.score > 0 and Global.score >= last_difficulty_score + 15:
		last_difficulty_score = Global.score - (Global.score % 15)
		fruit_timer.wait_time = max(0.2, fruit_timer.wait_time - 0.1)
		fruit_timer.start()
		bomb_timer.wait_time = max(0.2, fruit_timer.wait_time - 0.1)
		bomb_timer.start()

func _on_timer_timeout() -> void:
	var fruits = fruits_scene.instantiate()
	$Fruits.add_child(fruits)

func _on_bomb_timer_timeout() -> void:
	var bombs = bombs_scene.instantiate()
	$Bombs.add_child(bombs)
