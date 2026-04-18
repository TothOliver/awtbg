extends Control

@onready var statement_label = $StatementLabel
@onready var robot_texture = $Panel/RobotTexture
@onready var good_button = $VBoxContainer/GoodButton
@onready var bad_button = $VBoxContainer/BadButton

var robots: Array[RobotData] = []

func _ready():
	createRobots()
	show_robot(robots[0])

func show_robot(robot: RobotData):
	print(robot.sprite)
	statement_label.text = robot.dialog1
	robot_texture.texture = robot.sprite
	print(robot.sprite)

func createRobots():
	var r1 = RobotData.new()
	r1.name = "uni1"
	r1.sprite = load("res://Sprites/monkey.jpg")
	r1.is_good = true
	r1.dialog1 = "ello world"
	
	var r2 = RobotData.new()
	r2.name = "uni2"
	r2.sprite = load("res://Sprites/monkey.jpg")
	r2.is_good = false
	r2.dialog1 = "Hello world"
	
	robots = [r1, r2]
