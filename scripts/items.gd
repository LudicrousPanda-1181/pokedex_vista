extends VBoxContainer

var database
var query = "SELECT pkmn_name FROM pokemon;"

func _ready() -> void:
	database = SQLite.new()
	database.path = "res://db/pkmn_database_gen1_complete.db"
	database.open_db()

	if database.query(query):
		var result = database.query_result
		
		var index := 0
		
		for child in get_children():
			if child is Button:
				if index < result.size():
					child.text = result[index]["pkmn_name"]
					index += 1
