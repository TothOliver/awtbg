extends Control

@onready var robot_texture = $RobotArea/RobotTexture
@onready var good_button = $VBoxContainer/GoodButton
@onready var bad_button = $VBoxContainer/BadButton
@onready var chat_button1 = $AnswerPanel/Button1
@onready var chat_button2 = $AnswerPanel/Button2
@onready var day_manager = $DayManager
@onready var chat_manager = $ChatManager

# You need to define the array and the variable to hold the current robot
var robots: Array[RobotData] = []
var current_robot: RobotData
var is_waiting_for_replay := false;

func _ready():
	robots = RobotFactory.create_robots()
	spawn_next_robot()

func spawn_next_robot():
	chat_manager.clear_messages()
	
	if robots.size() > 0:
		current_robot = robots.pick_random()
		chat_manager.add_message(current_robot.robotChat[0], current_robot.name)
		
		chat_button1.text = current_robot.humanChat[chat_manager.chatCount]
		chat_button2.text = current_robot.humanChat[chat_manager.chatCount+1]
		
		# Only update texture if one exists
		if current_robot.sprite:
			robot_texture.texture = current_robot.sprite
	else:
		print("Error: No robots found in the 'robots' array.")
		
func handle_chat_choice(player_text: String, robot_reply: String):
	if chat_manager.chatCount > 5 or is_waiting_for_replay == true:
		return
	is_waiting_for_replay = true
	
	chat_manager.add_message(player_text, "You")
	await get_tree().create_timer(2.0).timeout
	chat_manager.add_message(robot_reply, current_robot.name)
	is_waiting_for_replay = false
	print(chat_manager.chatCount)
	
	if chat_manager.chatCount == 6:
		chat_button1.text = ""
		chat_button2.text = ""
	else:
		chat_button1.text = current_robot.humanChat[chat_manager.chatCount]
		chat_button2.text = current_robot.humanChat[chat_manager.chatCount+1]
	

func _on_chat_button1_pressed():
	print(current_robot.humanChat.size())
	print(current_robot.robotChat.size())
	handle_chat_choice(current_robot.humanChat[0], current_robot.robotChat[1])

func _on_chat_button2_pressed():
	handle_chat_choice(current_robot.humanChat[1], current_robot.robotChat[2])

func _on_good_button_pressed():
	print("Button Pressed: GOOD (Pass)")
	if current_robot:
		day_manager.process_robot(current_robot.is_good, true)
		spawn_next_robot()

func _on_bad_button_pressed():
	print("Button Pressed: BAD (Reject)")
	if current_robot:
		# Sending 'false' because the player is NOT passing the robot
		day_manager.process_robot(current_robot.is_good, false)
		spawn_next_robot()
