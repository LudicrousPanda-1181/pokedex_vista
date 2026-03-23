extends Control

class_name Searchbar

@onready var database = $database_dex
@onready var search_bar = $database_dex/searchbar
@onready var buttons = $database_dex/searchbar/ScrollContainer/items.get_children()


func _on_back_button_pressed() -> void:
	$"../camera".position.y = 540


func _ready():

	search_bar.text_changed.connect(_on_search_text_changed)

	for b in buttons:
		b.hide()
		b.pressed.connect(_on_button_pressed.bind(b))


func _on_search_text_changed(new_text : String):
	# IF TEXT IS BLANK, RETURN
	if new_text == "":
		for b in buttons:
			b.hide()
		return

	var results = database.search_pokemon(new_text)

	for i in range(buttons.size()):

		if i < results.size():

			var pokemon = results[i]

			buttons[i].text = pokemon["pkmn_name"]
			buttons[i].set_meta("id", pokemon["id"])
			buttons[i].show()

		else:
			buttons[i].hide()

func _on_button_pressed(button):
	
	var pokemon_id = button.get_meta("id")
	
	database.play_animation_from_id(pokemon_id - 1)
	database.update_dex_info_by_id(pokemon_id - 1)
	
	return pokemon_id
