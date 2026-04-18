extends Control

@onready var label = $Label

func set_message(text: String):
	if label == null:
		return
	label.text = text
