extends Control

@onready var statement_label = $StatementLabel
@onready var texture_rect = $Panel/TextureRect
@onready var good_button = $VBoxContainer/GoodButton
@onready var bad_button = $VBoxContainer/BadButton

var robots: Array[RobotData] = []

func _ready():
	var r1 = RobotData.new()
	r1.name = "uni1"
	r1.sprite = null
	r1.is_good = true
	r1.dialog1 = "ello world"
	
	robots[r1]
