extends Control

var matches = []

@onready var items = $database_dex/searchbar/ScrollContainer/items.get_children()

func _on_back_button_pressed() -> void:
	$"../camera".position.y = 540


func _on_searchbar_text_changed(new_text: String) -> void:
	new_text = new_text.to_lower()

	if new_text == "":
		for i in items:
			if i is Button:
				i.show()
		return

	for i in items:
		if i is Button:
			if new_text in i.text.to_lower():
				i.show()
			else:
				i.hide()
