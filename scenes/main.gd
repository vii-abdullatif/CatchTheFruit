extends Node2D

var bombs_scene : PackedScene = load("res://scenes/bomb.tscn")
var fruits_scene : PackedScene = load("res://scenes/fruits.tscn")

func _on_timer_timeout() -> void:
	var fruits = fruits_scene.instantiate()
	$Fruits.add_child(fruits)


func _on_bomb_timer_timeout() -> void:
	var bombs = bombs_scene.instantiate()
	$Bombs.add_child(bombs)


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("Fruits"):
		area.queue_free()
		Global.score -= 1
