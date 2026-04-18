class_name RobotFactory
extends RefCounted

static func create_robots() -> Array[RobotData]:
	var robots: Array[RobotData] = []
	
	var r1 = RobotData.new()
	r1.name = "uni1"
	r1.sprite = load("res://Sprites/monkey.jpg")
	r1.is_good = false
	r1.dialogs1 = "Hello I am a BAD Robot"
	r1.dialogs2 = "I will kill you all humans hahah"
	robots.append(r1)

	var r2 = RobotData.new()
	r2.name = "uni2"
	r2.sprite = load("res://Sprites/monkey.jpg")
	r2.is_good = true
	r2.dialogs1 = "Hello I am a GOOD Robot"
	r2.dialogs2 = "Please dont kill me"
	robots.append(r2)
	
	return robots
