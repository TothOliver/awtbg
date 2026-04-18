extends Control

@onready var statement_label = $StatementLabel
@onready var texture_rect = $Panel/TextureRect
@onready var good_button = $VBoxContainer/GoodButton
@onready var bad_button = $VBoxContainer/BadButton
@onready var day_manager = $DayManager

# You need to define the array and the variable to hold the current robot
var robots: Array[RobotData] = []
var current_robot: RobotData

func _ready():
	# Temporary: Create a robot so the game doesn't crash on start
	var r1 = RobotData.new()
	r1.dialog1 = "I am a unit."
	r1.is_good = true
	robots.append(r1)
	
	spawn_next_robot()

func spawn_next_robot():
	if robots.size() > 0:
		current_robot = robots.pick_random()
		statement_label.text = current_robot.dialog1
		
		# Only update texture if one exists
		if current_robot.sprite:
			texture_rect.texture = current_robot.sprite
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
