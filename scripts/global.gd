extends Node

var save_data: SaveData
var score: int = 0
var lives: int = 3

func _ready() -> void:
	save_data = SaveData.load_or_create()
