extends Node

var timer: float = 0

var callumsBought: int = 0
var nathanielsBought: int = 0
var taylorsBought: int = 0
var wilsonsBought: int = 0

func loadData(key: String) -> int:
	var data = SaveGame.data
	if key in data:
		return data[key]
	else:
		data[key] = 0
		return 0

func _ready() -> void:
	callumsBought = loadData("callumGensBought")
	nathanielsBought = loadData("nathanielGensBought")
	taylorsBought = loadData("taylorGensBought")
	wilsonsBought = loadData("wilsonGensBought")
	
func _process(delta: float) -> void:
	timer+=delta
	if timer >= 1:
		print("Earnt")
		timer = 0
		SaveGame.data["clicks"] += 1 * callumsBought
		SaveGame.data["clicks"] += 3 * nathanielsBought
		SaveGame.data["clicks"] += 9 * taylorsBought
		
		SaveGame.data["callumGensBought"] = callumsBought
		SaveGame.data["nathanielGensBought"] = nathanielsBought
		SaveGame.data["taylorGensBought"] = taylorsBought
