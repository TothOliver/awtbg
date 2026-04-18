class_name RobotFactory
extends RefCounted

static func create_robots() -> Array[RobotData]:
	var robots: Array[RobotData] = []
	
	var r1 = RobotData.new()
	r1.name = "uni1"
	r1.model = "T1337"
	r1.status = "Faulted"
	r1.manufacturer = "AgselAB"
	r1.sprite = load("res://Sprites/monkey.jpg")
	r1.is_good = true
	var robotChat1: Array[String] = [
		"Greetings, I am a very honest and kind AI. Lets work together so we can create a great society for all of us",
		"I will kill you all humans hahah",
		"hehehehe"
	]
	r1.robotChat = robotChat1
	var humanChat1: Array[String] = [
		"How can I really trust you?", "What is your definition of a great society?", 
		"yes2", "no2", 
		"yes3", "no3"
	]
	r1.humanChat = humanChat1
	robots.append(r1)

	var r2 = RobotData.new()
	r2.name = "uni2"
	r2.model = "H.A.R.O.L.D"
	r2.status = "Whole"
	r2.manufacturer = "E.V.I.L corp"
	r2.sprite = load("res://Sprites/nose.jpg")
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
	
	var r3 = RobotData.new()
	r3.name = "uni2"
	r3.model = "S80"
	r3.status = "Broken"
	r3.manufacturer = "G.Tech"
	r3.sprite = load("res://Sprites/think.jpg")
	r3.is_good = true
	var robotChat3: Array[String] = [
		"Hello I am a GOOD Robot",
		"Please dont kill me", 
		"aaaaahhhhhhhhh"
	]
	r3.robotChat = robotChat3
	var humanChat3: Array[String] = ["yes1", "no1", "yes2", "no2", "yes3", "no3"]
	r3.humanChat = humanChat3
	robots.append(r3)
	
	
	return robots
