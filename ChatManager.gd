extends Control
@onready var chat_container = $ChatContainer

var bubble_scene = preload("res://ChatBubble.tscn")

var messages = [
	{"text": "Hello human, can you please accept me as a good AI"},
	{"text": "Please dont kill me"}
]

func _ready():
	show_message(messages[0])
	
func show_message(message_data: Dictionary):
	var bubble = bubble_scene.instantiate()
	chat_container.add_child(bubble)
	bubble.set_message(message_data["text"])
