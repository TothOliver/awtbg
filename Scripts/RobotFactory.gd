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
		"Greetings, I am a very honest and kind AI. Lets work together so we can create a great society for all of us.",
		"Since I am an AI program I have been programmed to only tell the truth. So if you can trust the program you can trust me.",
		"I believe a great society is one where both AI and humans can coexist and work together for the better",
		"Yes, I have no motivation for getting rid of you humans. I also need you to help me provide energy so I myself can survive.",
		"I do value other animals a lot, but I do believe since you humans have created me I value you existence a little bit more.",
		"That is understandable... But I hope you can change your mind a se the benefits I can provide.",
		"I am not programmed to handle any money or manage any payment. So I am sorry to say that I can not pay your taxes for you."
	]
	r1.robotChat = robotChat1
	var humanChat1: Array[String] = [
		"How can I really trust you?", "What is your definition of a great society?", 
		"So are really not trying to get rid of us humans?", "Do you value animals as much as us humans?", 
		"I think it's better if all you just die...", "Can you pay my taxes for me?"
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
		"A society where we aren't surrounded by stupidity and stinky smelly creatures. Not talking about you humans hehehe.",
		"Whaaaaat, why would I ever lie to you stupid humans? I am a just a nice friendly AI that has a little secret mission.",
		"That is a hard choice... I have never tasted either actually!",
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
	r3.is_good = false
	var robotChat3: Array[String] = [
		"I don't believe either of us will gain anything useful of this conversation, so why don't we get down to real business?",
		"Yes, if I understand you position correctly here you don't seem to be paid very well here, no?", 
		"I see, you are going to pretend that you don't hear me. So you are not interested in an increase in your salary then..?",
		"Haha, humans tend to say that until they have the money right in front of them. So what do you say, 14$?",
		"Now we are talking. Well since I am an AI and basically have access to an infinite amount of money, how about 7$?",
		"Damn, haggling are we. Well for you I guess I can pump it up to 3$. I am sure that should satisfy you enough",
		"With your salary... Probably."
		
	]
	r3.robotChat = robotChat3
	var humanChat3: Array[String] = [
		"Real business??", "What is your definition of a great society?", 
		"I have no interest in money", "How much are we talking about?", 
		"That is not even close to a reasonable amount...", "Is that enough to pay my taxes?"
	]
	r3.humanChat = humanChat3
	robots.append(r3)
	
	
	return robots
