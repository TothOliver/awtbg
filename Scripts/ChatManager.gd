extends Control
@onready var dialogue_panel = $DialoguePanel

var bubble_scene = preload("res://Scenes/ChatBubble.tscn")
var chatCount = 0
	
func add_message(text: String, name: String):
	if text.is_empty():
		return
	var bubble = bubble_scene.instantiate()
	dialogue_panel.add_child(bubble)
	bubble.set_message(name + ": " + text)
	chatCount += 1

func clear_messages():
	chatCount = 0;
	for child in dialogue_panel.get_children():
		child.queue_free()
