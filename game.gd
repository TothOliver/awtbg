extends Control

@onready var statement_label = $StatementLabel
@onready var robot_texture = $RobotArea/RobotTexture
@onready var good_button = $VBoxContainer/GoodButton
@onready var bad_button = $VBoxContainer/BadButton
@onready var day_manager = $DayManager

# You need to define the array and the variable to hold the current robot
var robots: Array[RobotData] = []
var current_robot: RobotData

func _ready():
	createRobots()
	show_robot(robots[0])

func show_robot(robot: RobotData):
	print(robot.sprite)
	statement_label.text = robot.dialog1
	robot_texture.texture = robot.sprite

func createRobots():
	var r1 = RobotData.new()
	r1.name = "uni1"
	r1.sprite = load("res://Sprites/monkey.jpg")
	r1.is_good = true
	r1.dialog1 = "I am good robot"

	var r2 = RobotData.new()
	r2.name = "uni2"
	r2.sprite = load("res://Sprites/monkey.jpg")
	r2.is_good = false
	r2.dialog1 = "Hello world"
	
	robots = [r1, r2]

	spawn_next_robot()

func spawn_next_robot():
	if robots.size() > 0:
		current_robot = robots.pick_random()
		statement_label.text = current_robot.dialog1
		
		# Only update texture if one exists
		if current_robot.sprite:
			robot_texture.texture = current_robot.sprite
	else:
		print("Error: No robots found in the 'robots' array.")

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
