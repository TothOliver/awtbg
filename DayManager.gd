extends Node

# Scoring
var missed_robots_score: int = 0
var processed_today: int = 0

# Day Progression
var current_day: int = 1
var max_days: int = 3

# BAD AI let in
var bad_ai_let_in_count: int = 0
const MAX_ALLOWED_BAD_AI = 2

# Day Configurations: [Quota, Difficulty Level]
var day_configs = {
	1: {"quota": 3, "difficulty": 1},
	2: {"quota": 4, "difficulty": 2},
	3: {"quota": 5, "difficulty": 3}
}

func start_new_day():
	processed_today = 0
	var config = day_configs[current_day]
	print("--- DAY ", current_day, " START ---")
	print("Quota: ", config.quota, " | Difficulty Level: ", config.difficulty)
	# Trigger your UI to show the new quota here

func process_robot(is_good_robot: bool, player_choice_pass: bool):
	if player_choice_pass:
		if not is_good_robot:
			# ADMITTED A BAD AI
			bad_ai_let_in_count += 1
			missed_robots_score += 5
			print("SECURITY BREACH! Bad AI admitted. Total: ", bad_ai_let_in_count)
			
			# Check for Game Over condition
			if bad_ai_let_in_count >= MAX_ALLOWED_BAD_AI:
				game_over_death()
				return # Stop further processing
				
			print("Fail! You let a bad robot in.")
		else:
			print("Success! Good robot admitted.")
	else:
		if is_good_robot:
			print("Fail! You rejected a perfectly good robot.")
		else:
			print("Success! You caught a bad robot.")
	
	processed_today += 1
	check_quota_progress()

func game_over_death():
	# 1. Save current stats to the Global Autoload
	GameStats.final_missed_score = missed_robots_score
	GameStats.total_security_breaches = bad_ai_let_in_count # From your new counter
	
	print("YOU DIE")
	
	# 2. Change the scene
	get_tree().change_scene_to_file("res://death_scene.tscn")

func check_quota_progress():
	if processed_today >= day_configs[current_day].quota:
		end_day()

func end_day():
	print("Day ", current_day, " finished!")
	if current_day < max_days:
		current_day += 1
		# Show a transition screen or auto-start next day
		start_new_day()
	else:
		print("Game Over. Final missed score: ", missed_robots_score)
		
