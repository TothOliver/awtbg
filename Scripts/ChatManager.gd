extends Control
@onready var dialogue_panel = $DialoguePanel

var bubble_scene = preload("res://Scenes/ChatBubble.tscn")
	
func add_message(text: String):
	if text.is_empty():
		return
	var bubble = bubble_scene.instantiate()
	dialogue_panel.add_child(bubble)
	bubble.set_message(text)

func clear_messages():
	for child in dialogue_panel.get_children():
		child.queue_free()
