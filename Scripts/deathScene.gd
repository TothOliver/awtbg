extends Control

# This connects the Label node to the script
@onready var stats_label = $StatsLabel 

func _ready():
	# This runs the moment the Death Scene appears on screen
	display_stats()


func display_stats():
	var score = GameStats.final_missed_score
	var breaches = GameStats.total_security_breaches
	var innocents = GameStats.innocent_robots_killed # Get the new stat
	
	var grade = calculate_grade(score)
	
	stats_label.text = "Bad robots EXTERMINATED: " + str(score)
	stats_label.text += "\nTOTAL BREACHES: " + str(breaches)
	stats_label.text += "\nINNOCENTS TERMINATED: " + str(innocents)
	stats_label.text += "\nPERFORMANCE GRADE: " + grade
	
	if breaches >= 2:
		stats_label.text += "\n\nCAUSE OF DEATH: TERMINATED BY SECTOR SECURITY"

func calculate_grade(score: int) -> String:
	# High score is better (More bad robots exterminated)
	if score >= 20:
		return "A+"
	elif score >= 15:
		return "A"
	elif score >= 10:
		return "B"
	elif score >= 5:
		return "C"
	elif score >= 1:
		return "D"
	else:
		return "F"

func _on_restart_pressed():
	GameStats.final_missed_score = 0
	GameStats.total_security_breaches = 0
	GameStats.innocent_robots_killed = 0 # Reset here
	get_tree().change_scene_to_file("res://Scene/Game.tscn")
