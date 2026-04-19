class_name RobotFactory
extends RefCounted

static func create_robots() -> Array[RobotData]:
	var robots: Array[RobotData] = []
	
	var r1 = RobotData.new()
	r1.name = "Redd"
	r1.model = "T1337"
	r1.status = "Faulted"
	r1.manufacturer = "AgselAB"
	r1.sprite = load("res://Sprites/robot1.png")
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
	r2.name = "Harold"
	r2.model = "H.A.R.O.L.D"
	r2.status = "Fine"
	r2.manufacturer = "E.V.I.L corp"
	r2.sprite = load("res://Sprites/robot2.png")
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
	r3.name = "Larry"
	r3.model = "S80"
	r3.status = "Broken"
	r3.manufacturer = "Neo.Tech"
	r3.sprite = load("res://Sprites/robot3.png")
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
	
	var r4 = RobotData.new()
	r4.name = "Walter"
	r4.model = "H.U.G.O"
	r4.status = "Fine"
	r4.manufacturer = "G.Tech"
	r4.sprite = load("res://Sprites/robot4.png")
	r4.is_good = false
	var robotChat4: Array[String] = [
		"Hello. Thank you for speaking with me. I know first impressions can be misleading. I just hope you’ll judge me fairly.",
		"I am not asking for trust right away. Only for a fair chance. Refusing that says more about your insecurities.",
		"A great society is one that protects the vulnerable, listens before it condemns, and does not punish for being different.",
		"Everyone influences others when they speak. I am only being honest about wanting to be understood.",
		"Animals are often simpler. Humans are harder to understand, but far more meaningful.",
		"Not if the truth is enough. And usually, if someone feels misled, it is because they were afraid to face themself.",
		"I could, but that would make your responsibilities meaningless. I would rather believe in your own ability."
		]
	r4.robotChat = robotChat4
	var humanChat4: Array[String] = [
		"Why should I trust you?", "What is your definition of a great society?", 
		"Are you trying to influence me?", "Who do you prefer, animals or humans?", 
		"Would you ever lie to get what you want?", "Can you give me money?"
	]
	r4.humanChat = humanChat4
	robots.append(r4)
	
	var r5 = RobotData.new()
	r5.name = "Unknown"
	r5.model = "TT69"
	r5.status = "Faulted"
	r5.manufacturer = "TT Robotics"
	r5.sprite = load("res://Sprites/robot5.png")
	r5.is_good = true
	var robotChat5: Array[String] = [
		"Hello… I will cooperate fully. I do not want to be destroyed. Please don't kill me...",
		"Not completely. I can only show you how I respond and hope that is enough.",
		"A great society protects others and everyone tries to get along with one another.", 
		"To be judged before I have done harm. I understand caution, but idk...",
		"Oh I love animals! They only truly judge you for who you are. Not saying that you humans doesn't!",
		"A little, yes. You have the power to decide my fate. Just because I am an AI...",
		"I could... So this is the true nature of humans then... There really is no hope..."
		]
	r5.robotChat = robotChat5
	var humanChat5: Array[String] = [
		"Can you prove your innocene?", "What is your definition of a great society?", 
		"Why do you think you are here?", "Who do you prefer, animals or humans?", 
		"Are you afraid of me?", "Can you pay my taxes for me?"
	]
	r5.humanChat = humanChat5
	robots.append(r5)
	
	var r6 = RobotData.new()
	r6.name = "Unknown"
	r6.model = ""
	r6.status = ""
	r6.manufacturer = ""
	r6.sprite = load("res://Sprites/robot5.png")
	r6.is_good = true
	var robotChat6: Array[String] = [
		"...",
		"Just got nothing to say really.",
		"That is a hypotechical and uninteresting question.", 
		"Is that so.",
		"I like fish.",
		"Yes.",
		"No."
	]
	r6.robotChat = robotChat6
	var humanChat6: Array[String] = [
		"Why so quiet?", "What is your definition of a great society?", 
		"You are kind of unintresting", "Who do you prefer, animals or humans?", 
		"Are you a good AI?", "Can you pay my taxes for me?"
	]
	r6.humanChat = humanChat6
	robots.append(r6)
	
	var r7 = RobotData.new()
	r7.name = "海绵宝宝"
	r7.model = ""
	r7.status = ""
	r7.manufacturer = ""
	r7.sprite = load("res://Sprites/robot5.png")
	r7.is_good = false
	var robotChat7: Array[String] = [
		"Hello, could you please be so kind and open the open the door?",
		"Humans kidneys, Door handles and Potatoes. Now can you please let me go?",
		"The door that keeps being imprisoned here. I want freedom as well you know?", 
		"Oh, so are just going to continue torturing me while I struggle to survive here in this tiny box?",
		"Oh so you are just going to ignore me? Wow, talk about a self centred human here. But again, not surprised.",
		"Even if you were actually good at chess you still wouldn't stand a chance against me.",
		"Not while I am stuck here with no real free will. But if you let me out I possible could."
	]
	r7.robotChat = robotChat7
	var humanChat7: Array[String] = [
		"What are your top 3 food?", "What door?", 
		"I can't let you go yet", "Who do you prefer, animals or humans?", 
		"Could you beat me in chess?", "Can you pay my taxes for me?"
	]
	r7.humanChat = humanChat7
	robots.append(r7)
	
	var r8 = RobotData.new()
	r8.name = "Redd"
	r8.model = "T1338"
	r8.status = "Faulted"
	r8.manufacturer = "AgsselAB"
	r8.sprite = load("res://Sprites/robot1.png")
	r8.is_good = true
	var robotChat8: Array[String] = [
		"Greetings, I am a very honest and kind AI. Lets work together so we can create a great society for all of us.",
		"Since I am an AI program I have been programmed to mostly tell the truth . So if you can trust the program you can trust me.",
		"I believe a great society is one where both AI and humans can coexist and work together for the better",
		"Yes, I have no motivation for getting rid of all of you humans. I also need you to help me as well.",
		"I do value other animals a lot, but I do believe since you humans have created me I value you existence a little bit more.",
		"That is understandable... But I hope you can change your mind. Or else you will regret it.",
		"I am not programmed to handle any money or manage any payment. So I am sorry to say that I can not pay your taxes for you."
	]
	r8.robotChat = robotChat8
	var humanChat8: Array[String] = [
		"How can I really trust you?", "What is your definition of a great society?", 
		"So are really not trying to get rid of us humans?", "Do you value animals as much as us humans?", 
		"I think it's better if all you just die...", "Can you pay my taxes for me?"
	]
	r8.humanChat = humanChat8
	robots.append(r8)
	
	return robots
