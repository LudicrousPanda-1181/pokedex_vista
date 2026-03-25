extends Control

# DATABASE
var database: SQLite

@onready var animations: Node = $BattleAnimations/animations
@onready var trainer_mon_animations: Node =$BattleAnimations/trainer_mon
@onready var pkmn_name_battle: Label = $healthbar_enemy/pkmn_name_battle



func _ready() -> void:
	trainer_mon_animations.play()
	database = SQLite.new()
	database.path = "res://db/pkmn_database_gen1_complete.db"
	database.open_db()

func play_animation_from_id(id):
	var result = database.select_rows("pokemon", "id = " + str(id + 1), ["pkmn_gif"])
	if result.size() > 0:
		var animation_name = result[0]["pkmn_gif"]
		animations.play(animation_name)
		return animation_name

	print("No animation found for ID:", id)

func update_dex_info_by_id(id):
	var query = "SELECT * FROM pokemon WHERE id = " + str(id + 1) + ";"
	
	if database.query(query):
		var result = database.query_result
		
		if result.size() > 0:
			var pokemon = result[0]
			
			pkmn_name_battle.text = str(pokemon["pkmn_name"])

# GENERATING A RANDOM PKMN
func pkmn_randomizer():
	var random_id = randi_range(0,151)
	play_animation_from_id(random_id)
	update_dex_info_by_id(random_id)
	return random_id

# RUN BUTTON PRESSED
func _on_button_run_pressed() -> void:
	pkmn_randomizer()



# DEX BUTTON PRESS
func _on_button_dex_pressed() -> void:
	print("You pressed the DEX button!!!")
	$"../camera".position.y =  2169.0
	
