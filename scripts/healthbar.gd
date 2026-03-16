extends ProgressBar

@onready var health_bar: Node
@onready var battle_text: Label = $"../battle_progress_txt"
@export var max_hp: float = 100.0
@export var health_points: float = 100.0
@export var damage_points: float = 10.0


	

func _on_button_fight_pressed() -> void:
	#BATTLE LOGIC
	var randomizer = randi_range(1,100)
	var attack_odds = 30 # TRESHOLD IN %
	
	if randomizer >= attack_odds:
		battle_text.text = str("It's a hit")
		value -= step
		
	elif randomizer < attack_odds:
		battle_text.text = str("You missed")
		print("You missed with this as number:" + str(randomizer))
	
	
		print(value)
	if value <= min_value:
		print("The Pokemon died")
		value = max_value


func _on_button_catch_pressed() -> void:
	print("You pressed the Catch button!")
	
	
func _on_button_run_pressed() -> void:
	value = max_value
	battle_text.text = ""
