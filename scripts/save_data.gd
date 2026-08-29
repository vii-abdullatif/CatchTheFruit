class_name SaveData
extends Resource



@export var high_score : int = 0
const SAVE_PATH: String = "user://save_data.tres"

func save() -> void:
	ResourceSaver.save(self, SAVE_PATH)

static func load_or_create() -> SaveData:
	if FileAccess.file_exists(SAVE_PATH):
		var res = load(SAVE_PATH)
		if res is SaveData:
			return res
	return SaveData.new()
