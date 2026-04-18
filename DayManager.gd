extends Node

# Scoring
var missed_robots_score: int = 0
var processed_today: int = 0

# Day Progression
var current_day: int = 1
var max_days: int = 3

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
			missed_robots_score += 5
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
		
		
