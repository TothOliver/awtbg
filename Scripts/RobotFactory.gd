class_name RobotFactory
extends RefCounted

static func create_robots() -> Array[RobotData]:
	var robots: Array[RobotData] = []
	
	var r1 = RobotData.new()
	r1.name = "uni1"
	r1.sprite = load("res://Sprites/monkey.jpg")
	r1.is_good = false
	var robotChat1: Array[String] = [
		"Hello I am a BAD Robot",
		"I will kill you all humans hahah",
		"hehehehe"
	]
	r1.robotChat = robotChat1
	var humanChat1: Array[String] = ["yes1", "no1", "yes2", "no2", "yes3", "no3"]
	r1.humanChat = humanChat1
	robots.append(r1)

	var r2 = RobotData.new()
	r2.name = "uni2"
	r2.sprite = load("res://Sprites/monkey.jpg")
	r2.is_good = true
	var robotChat2: Array[String] = [
		"Hello I am a GOOD Robot",
		"Please dont kill me", 
		"aaaaahhhhhhhhh"
	]
	r2.robotChat = robotChat2
	var humanChat2: Array[String] = ["yes1", "no1", "yes2", "no2", "yes3", "no3"]
	r2.humanChat = humanChat2
	robots.append(r2)
	
	
	return robots
