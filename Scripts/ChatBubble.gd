extends Control

@onready var label = $Label

func set_message(text: String):
	label.text = text
