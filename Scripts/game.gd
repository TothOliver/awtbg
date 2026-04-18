extends Control

@onready var robot_texture = $RobotArea/RobotTexture
@onready var good_button = $ButtonPanel/VBoxContainer/GoodButton
@onready var bad_button = $ButtonPanel/VBoxContainer/BadButton
@onready var chat_button1 = $AnswerPanel/Button1
@onready var day_manager = $DayManager
@onready var chat_manager = $ChatManager
@onready var health_bar = $PlayerStats/HealthBar

# You need to define the array and the variable to hold the current robot
var robots: Array[RobotData] = []
var current_robot: RobotData
var is_waiting_for_replay := false;

func _ready():
	robots = RobotFactory.create_robots()
	spawn_next_robot()
	health_bar.value = 100

func spawn_next_robot():
	chat_manager.clear_messages()
	
	if robots.size() > 0:
		current_robot = robots.pick_random()
		chat_manager.add_message(current_robot.dialogs1, current_robot.name)
		
		# Only update texture if one exists
		if current_robot.sprite:
			robot_texture.texture = current_robot.sprite
	else:
		print("Error: No robots found in the 'robots' array.")

func _on_chat_button1_pressed():
	if chat_manager.chatCount > 5 or is_waiting_for_replay == true:
		return
	is_waiting_for_replay = true
	
	chat_manager.add_message("Hello robot", "You")
	await get_tree().create_timer(2.0).timeout
	chat_manager.add_message(current_robot.dialogs2, current_robot.name)
	is_waiting_for_replay = false

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
