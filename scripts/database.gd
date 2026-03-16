extends Node

class_name Database

var database = SQLite
var current_id: int = 0

@onready var animations: Node = $"../../animations_dex"
@onready var pkmn_name_box: Label = $text_alignment/pkmn_name/pkmn_name_box
@onready var pkmn_type_box: Label = $text_alignment/pkmn_type/pkmn_type_box
@onready var pkmn_height_box: Label = $text_alignment/pkmn_height/pkmn_height_box
@onready var pkmn_weight_box: Label = $text_alignment/pkmn_weight/pkmn_weight_box
@onready var pkmn_desc_box: Label = $text_alignment/pkmn_desc/pkmn_desc_box
@onready var pkmn_evolve_box: Label = $text_alignment/pkmn_evolve/pkmn_evolve_box
@onready var pkmn_caught_box: Label = $text_alignment/pkmn_caught/pkmn_caught_box
@onready var pkmn_nmbr_box: Label = $text_alignment/pkmn_nmbr/pkmn_nmbr_box


func _ready() -> void:
	database = SQLite.new()
	database.path = "res://db/pkmn_database_gen1_complete.db"
	database.open_db()
	
	play_animation_from_id(current_id)
	update_dex_info_by_id(current_id)




func create_table() -> void:
	var table: Dictionary = {
		"id" : {
			"data_type": "int",
			"primary_key": true,
			"not_null": true,
			"auto_increment": true,
			},

		"pkmn_name": {
			"data_type": "text"
		},

		"pkmn_type": {
			"data_type": "text"
		},

		"pkmn_height": {
			"data_type": "real"
		},

		"pkmn_weight": {
			"data_type": "real"
		},
		
		"pkmn_evolves_at": {
			"data_type": "text"
		},
		
		"pkmn_caught_counter": {
			"data_type": "real"
		},
		
		"pkmn_description": {
			"data_type": "text"
		},
		
		"pkmn_gif": {
			"data_type": "text"
		}
	}
	database.create_table("pkmn_table", table)




func play_animation_from_id(id):
	var result = database.select_rows("pokemon", "id = " + str(id + 1), ["pkmn_gif"])
	if result.size() > 0:
		var animation_name = result[0]["pkmn_gif"]
		animations.play(animation_name)
		return animation_name


# UPDATING DEX INFORMATION
func update_dex_info_by_id(id):
	var query = "SELECT * FROM pokemon WHERE id = " + str(id + 1) + ";"
	
	if database.query(query):
		var result = database.query_result
		
		if result.size() > 0:
			var pokemon = result[0]
			
			pkmn_name_box.text = str(pokemon["pkmn_name"])
			pkmn_type_box.text = str(pokemon["pkmn_type"])
			pkmn_height_box.text = str(pokemon["pkmn_height"]) + " m"
			pkmn_weight_box.text = str(pokemon["pkmn_weight"]) + " KG"
			pkmn_desc_box.text = str(pokemon["pkmn_description"])
			pkmn_evolve_box.text = str(pokemon["pkmn_evolves_at"])
			pkmn_caught_box.text = str(pokemon["pkmn_caught_counter"]) + " times"
			pkmn_nmbr_box.text = "#" + str(pokemon["id"])



func _on_button_right_pressed() -> void:
	current_id += 1
	if current_id > 152:
		current_id = 152
	play_animation_from_id(current_id)
	update_dex_info_by_id(current_id)
	print(current_id)



func _on_button_left_pressed() -> void:
	current_id -= 1
	if current_id < 0:
		current_id = 0
	play_animation_from_id(current_id)
	update_dex_info_by_id(current_id)
	print(current_id)



func search_pokemon(search_text : String):

	search_text = search_text.to_lower()

	var query = "SELECT id, pkmn_name FROM pokemon WHERE LOWER(pkmn_name) LIKE '%" + search_text + "%' LIMIT 3;"

	if database.query(query):
		return database.query_result

	return []
