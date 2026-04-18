extends Control

# This connects the Label node to the script
@onready var stats_label = $StatsLabel 

func _ready():
	# This runs the moment the Death Scene appears on screen
	display_stats()

func display_stats():
	# Access the 'GameStats' Global you created in the 'Globals' tab
	var score = GameStats.final_missed_score
	var breaches = GameStats.total_security_breaches
	
	# Update the text on your screen
	stats_label.text = "FINAL SCORE: " + str(score)
	stats_label.text += "\nTOTAL BREACHES: " + str(breaches)
	
	if breaches >= 2:
		stats_label.text += "\n\nCAUSE OF DEATH: TERMINATED BY SECTOR SECURITY"


func _on_restart_pressed():
	# Reset the Global variables so the next game starts at 0
	GameStats.final_missed_score = 0
	GameStats.total_security_breaches = 0
	
	# Reload the main game scene
	get_tree().change_scene_to_file("res://Game.tscn")
