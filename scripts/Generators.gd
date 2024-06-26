extends Node

var timer: float = 0

var callumsBought: int = 0
var nathanielsBought: int = 0
var taylorsBought: int = 0
var wilsonsBought: int = 0
var greensBought: int = 0
var redsBought: int = 0
var jermasBought: int = 0

func loadData(key: String) -> int:
	var data = SaveGame.data
	if key in data:
		return data[key]
	else:
		data[key] = 0
		return 0
	
func _process(delta: float) -> void:
	timer+=delta
	if timer >= 1:
		timer = 0
		SaveGame.data["clicks"] += 1 * loadData("callumGensBought") * SaveGame.data["multiplier"]
		SaveGame.data["clicks"] += 3 * loadData("nathanielGensBought") * SaveGame.data["multiplier"]
		SaveGame.data["clicks"] += 9 * loadData("taylorGensBought") * SaveGame.data["multiplier"]
		SaveGame.data["clicks"] += 27 * loadData("wilsonGensBought") * SaveGame.data["multiplier"]
		SaveGame.data["clicks"] += 81 * loadData("greenGensBought") * SaveGame.data["multiplier"]
		SaveGame.data["clicks"] += 243 * loadData("redGensBought") * SaveGame.data["multiplier"]
		SaveGame.data["clicks"] += 729 * loadData("jermaGensBought") * SaveGame.data["multiplier"]
		
		SaveGame.data["callumGensBought"] = callumsBought
		SaveGame.data["nathanielGensBought"] = nathanielsBought
		SaveGame.data["taylorGensBought"] = taylorsBought
		SaveGame.data["wilsonGensBought"] = wilsonsBought
		SaveGame.data["greenGensBought"] = greensBought
		SaveGame.data["redGensBought"] = redsBought
		SaveGame.data["jermaGensBought"] = jermasBought
