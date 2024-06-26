extends Node

var timer: float = 0



func saveGame(save: Dictionary) -> void:
	var gameFile = FileAccess.open("user://gameData.json", FileAccess.WRITE)
	
	var jsonString = JSON.stringify(save)
	gameFile.store_line(jsonString)

func loadGame() -> Dictionary:
	var data
	if not FileAccess.file_exists("user://gameData.json"): 
		var save_dict = {
			"clicks": 0,
			"multiplier": 1,
			"multiplierCost" : 25000,
			"callumGensBought" : 0,
			"nathanielGensBought" : 0,
			"taylorGensBought" : 0,
			"wilsonGensBought" : 0,
		}
		return save_dict
	else:
		var saveGame = FileAccess.get_file_as_string("user://gameData.json")

		data = JSON.parse_string(saveGame)

	
	return data
	
var data := loadGame()

func _ready() -> void:
	print(data)


func _process(delta: float) -> void:
	timer+=delta
	if timer >= 1:
		timer=0
		saveGame(data)
