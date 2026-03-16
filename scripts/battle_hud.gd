extends Control
# DATABASE
var database = SQLite
var current_id = 0

# NODES
@onready var animations: Node = $animations
@onready var pkmn_name: Label = $healthbar/pkmn_name_battle

func _ready() -> void:
	database = SQLite.new()
	database.path = "res://db/pkmn_database_gen1_complete.db"
	database.open_db()


func play_animation_from_id(id):
	var result = database.select_rows("pokemon", "id = " + str(id + 1), ["pkmn_gif"])
	if result.size() > 0:
		var animation_name = result[0]["pkmn_gif"]
		animations.play(animation_name)
		return animation_name

func update_dex_info_by_id(id):
	var query = "SELECT * FROM pokemon WHERE id = " + str(id + 1) + ";"
	
	if database.query(query):
		var result = database.query_result
		
		if result.size() > 0:
			var pokemon = result[0]
			
			pkmn_name.text = str(pokemon["pkmn_name"])




# RUN BUTTON PRESSED
func _on_button_run_pressed() -> void:
	current_id = randi_range(0,151)
	play_animation_from_id(current_id)
	update_dex_info_by_id(current_id)



# DEX BUTTON PRESS
func _on_button_dex_pressed() -> void:
	print("You pressed the DEX button!")
	$"../camera".position.y =  2169.0
