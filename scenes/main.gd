extends Node2D

var bombs_scene : PackedScene = load("res://scenes/bomb.tscn")
var fruits_scene : PackedScene = load("res://scenes/fruits.tscn")

func _on_timer_timeout() -> void:
	var fruits = fruits_scene.instantiate()
	$Fruits.add_child(fruits)


func _on_bomb_timer_timeout() -> void:
	var bombs = bombs_scene.instantiate()
	$Bombs.add_child(bombs)
