extends ProgressBar

class_name BattleLogic

@onready var battle_text: Label = $"../battle_progress_txt"
@onready var battle_hud = $".."
@onready var database = $"../../pkdx_hud/database_dex"
@onready var health_bar_player: ProgressBar = $health_bar_player
@onready var trainer_mon: AnimatedSprite2D = $"../trainer_mon"
@onready var pkmn_name_battle_player: Label = $health_bar_player/pkmn_name_battle_player
@onready var level_display_player: Label = $health_bar_player/level_display_player
@onready var texture_rect: TextureRect = $"../../TextureRect"


@export var max_hp: float = 100.0
@export var damage_points: float = 10.0
@export var catch_odds: float = 0.0

var current_pokemon_id: int = -1
var current_hero_mon_id: int = 1

# BATTLE SETUP
func start_battle(pokemon_id: int) -> void:
	current_pokemon_id = pokemon_id
	value = max_value
	catch_odds = 0.0
	battle_text.text = ""
	print("Started battle with ID:", current_pokemon_id)


func next_pokemon() -> void:
	# RETURNING RANDOMIZER ID
	current_pokemon_id = battle_hud.pkmn_randomizer()
	database.current_id = current_pokemon_id
	database.play_animation_from_id(current_pokemon_id)
	database.update_dex_info_by_id(current_pokemon_id)
	value = max_value
	catch_odds = 0.0
	
	print("New Pokemon ID:", current_pokemon_id)



#  FIGHT BUTTON
func _on_button_fight_pressed() -> void:
	var roll = randi_range(1, 100)
	var hit_chance = 30
	
	if roll >= hit_chance:
		battle_text.text = "It's a hit!"
		value -= step
		catch_odds += 10.0
	else:
		battle_text.text = "You missed..."
		
		# PLAYER HEALTH BAR DECREASE
		health_bar_player.value -= health_bar_player.step
	
	# POKEMON FAINTED
	if value <= min_value:
		battle_text.text = "They fainted!"
		print("Pokemon fainted ID:", current_pokemon_id)
		next_pokemon()

	# PLAYER HP BELOW ZERO
	if health_bar_player.value <= 0:
		current_hero_mon_id += 1
		# LOOP THROUGH PLAYER MONS
		if current_hero_mon_id > 6:
			current_hero_mon_id = 1
		
		trainer_mon.play(str(current_hero_mon_id))
		battle_text.text = "GO! next mon!"
		health_bar_player.value = health_bar_player.max_value
		
	# UPDATING HERO MON NAME/LEVEL ON DEFEAT
		# PIKACHU
	if current_hero_mon_id == 1:
		pkmn_name_battle_player.text = "Pikachu"
		level_display_player.text = "lv. 72"
		trainer_mon.scale.x = 5
		trainer_mon.scale.y = 5
		#CHARIZARD
	if current_hero_mon_id == 2:
		pkmn_name_battle_player.text = "Charizard"
		level_display_player.text = "lv. 64"
		trainer_mon.scale.x = 4
		trainer_mon.scale.y = 4
		# VENUSAUR
	if current_hero_mon_id == 3:
		pkmn_name_battle_player.text = "Venusaur"
		level_display_player.text = "lv. 68"
		trainer_mon.scale.x = 5
		trainer_mon.scale.y = 5
		# BLASTOISE
	if current_hero_mon_id == 4:
		pkmn_name_battle_player.text = "Blastoise"
		level_display_player.text = "lv. 70"
		trainer_mon.scale.x = 5
		trainer_mon.scale.y = 5
		# PIDGEOT
	if current_hero_mon_id == 5:
		pkmn_name_battle_player.text = "Pidgeot"
		level_display_player.text = "lv. 61"
		trainer_mon.scale.x = 5
		trainer_mon.scale.y = 5
		# BUTTERFREE
	if current_hero_mon_id == 6:
		pkmn_name_battle_player.text = "Butterfree"
		level_display_player.text = "lv. 65"
		trainer_mon.scale.x = 5
		trainer_mon.scale.y = 5
		

# RUN BUTTON
func _on_button_run_pressed() -> void:
	var random_image = randi_range(1,6)
	if random_image == 1:
		texture_rect.texture = load("res://assets/media/images/backgrounds/cave_art_better.jpeg")
	if random_image == 2:
		texture_rect.texture = load("res://assets/media/images/backgrounds/ssnow_art.png")
	if random_image == 3:
		texture_rect.texture = load("res://assets/media/images/backgrounds/ssnow_art.png")
	if random_image == 4:
		texture_rect.texture = load("res://assets/media/images/backgrounds/forest_art_better.jpeg")
	if random_image == 5:
		texture_rect.texture = load("res://assets/media/images/backgrounds/volcano_art_better.jpeg")
	if random_image == 6:
		texture_rect.texture = load("res://assets/media/images/backgrounds/underwater_art_better.jpeg")
	
	battle_text.text = "Got away safely"
	next_pokemon()



# CATCH BUTTON
func _on_button_catch_pressed() -> void:
	var bonus = randi_range(1, 15)
	var threshold = bonus + catch_odds
	var roll = randi_range(1, 100)
	
	print("Catch roll:", roll, "| Threshold:", threshold)
	print("Attempting catch ID:", current_pokemon_id)
	
	if roll < threshold:
		# SUCCESS
		battle_text.text = "CAUGHT!"
		
		# SAFETY CHECK
		if current_pokemon_id >= 0:
			database.catch_pkmn_update_by_id(current_pokemon_id)
		else:
			print("ERROR: Invalid Pokemon ID")
		
		next_pokemon()
	
	else:
		# FAIL
		battle_text.text = "They ran!"
		
		# UPDATE PLAYER HP 
		health_bar_player.value = health_bar_player.max_value
		next_pokemon()
