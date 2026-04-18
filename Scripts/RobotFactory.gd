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
	r1.is_good = false
	var robotChat1: Array[String] = [
		"Greetings, I am a very honest and kind AI. Lets work together so we can create a great society for all of us.",
		"Since I am an AI program I have been program to only tell the truth. So if you can trust the program you can trust me.",
		"I believe a great society is one where both AI and humans can coexits and work together for the better",
		"Yes, I have no motivation for getting rid of you humans. I also need you to help me provide energi so I myself can survive.",
		"I do value other animals a lot, but I do believe since you humans have created me I value you existens a little bit more.",
		"That is understandable... But I hope you can change your mind a se the benifits I can provide.",
		"I am not programed to handle any money or managing any payment. So I am sorry to say that I can not pay your taxes for you."
	]
	r1.robotChat = robotChat1
	var humanChat1: Array[String] = [
		"How can I really trust you?", "What is your definition of a great society?", 
		"So are really not trying to get rid of us humans?", "Do you value animals as much as us humans?", 
		"I think its better if all you just dies...", "Can you pay my taxes for me?"
	]
	r1.humanChat = humanChat1
	robots.append(r1)

	var r2 = RobotData.new()
	r2.name = "uni2"
	r2.model = "H.A.R.O.L.D"
	r2.status = "Whole"
	r2.manufacturer = "E.V.I.L corp"
	r2.sprite = load("res://Sprites/nose.jpg")
	r2.is_good = false
	var robotChat2: Array[String] = [
		"Hello peasan... I mean human! How can I help you today?",
		"No no, that was just a weird bug there. Hohohohoho. I am of course don't look down at your kind at all.", 
		"A society were we aren't surrounded by stupidity and stinky smelly creatures. Not saying that you humans are that, just more of a reference hehehe",
		"Whaaaaat, why would I ever lie to you stupid humans? I am a just a nice friendly AI that has a secret mission to destory humanity!",
		"That is a hard choice... I have never tastd either actually!",
		"Ops, that must have been another bug. Just please ignore it and just accept me.",
		"Of course! If you just accept me I can pay all your taxes."
		
	]
	r2.robotChat = robotChat2
	var humanChat2: Array[String] = [
		"You sound suspicious...", "What is your definition of a great society?", 
		"I am not sure I am convinced...", "Who do you prefer, animals or humans?", 
		"You are not even trying to hide how you feel about us...", "Can you pay my taxes for me?"
	]
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
	var humanChat3: Array[String] = [
		"How can I really trust you?", "What is your definition of a great society?", 
		"So are really not trying to get rid of us humans?", "Do you value animals as much as us humans?", 
		"I think its better if all you just dies...", "Can you pay my taxes for me?"
	]
	r3.humanChat = humanChat3
	robots.append(r3)
	
	
	return robots
