extends TextureProgressBar



@onready var battle_text: Label = $"../battle_progress_txt"
@onready var battle_hud = $".."
@onready var database = $"../../pkdx_hud/database_dex"
@onready var health_bar_player: TextureProgressBar = $health_bar_player
@onready var trainer_mon: AnimatedSprite2D = $"../BattleAnimations/trainer_mon"
@onready var pkmn_name_battle_player: Label = $health_bar_player/pkmn_name_battle_player
@onready var level_display_player: Label = $health_bar_player/level_display_player
@onready var run_fade: ColorRect = $"../BattleAnimations/run_fade"
@onready var battle_animations: AnimationPlayer = $"../BattleAnimations"
@onready var background_pic: TextureRect = $"../../background_pic"
@onready var pokeball: Sprite2D = $"../BattleAnimations/Pokeball"
@onready var animations: AnimatedSprite2D = $"../BattleAnimations/animations"
@onready var run_away_sfx: AudioStreamPlayer2D = $"../BattleAnimations/sfx_anim_player/run_away_sfx"
@onready var healthbar_enemy: TextureProgressBar = $"."
@onready var attack_meter: TextureProgressBar = $attack_meter




# BUTTONS
@onready var button_fight: TextureButton = $"../button_allignment/VboxContainer1/button_fight"
@onready var button_run: TextureButton = $"../button_allignment/VBoxContainer2/button_run"
@onready var button_catch: TextureButton = $"../button_allignment/VBoxContainer2/button_catch"
@onready var button_dex: TextureButton = $"../button_allignment/VboxContainer1/button_dex"


@export var max_hp: float = 100.0
@export var damage_points: float = 10.0
@export var catch_odds: float = 0.0


var current_pokemon_id: int = -1
var current_hero_mon_id: int = 1

func _ready() -> void:
	button_fight.focus_mode = Control.FOCUS_NONE
	button_run.focus_mode = Control.FOCUS_NONE
	button_catch.focus_mode = Control.FOCUS_NONE
	button_dex.focus_mode = Control.FOCUS_NONE
	run_fade.visible = false
	pokeball.visible = false
	pokeball.flip_h = true
	attack_meter.value = attack_meter.min_value

func _process(delta: float) -> void:
	attack_meter.value -= attack_meter.step
	if attack_meter.value >= 75:
		attack_meter.texture_progress = load("res://assets/GUI/atk_power_progressbar/atk_pwr_progressbar3.png")
	else:
		attack_meter.texture_progress = load("res://assets/GUI/atk_power_progressbar/atk_pwr_progressbar2.png")

func _input(event):
	if event.is_action_pressed("fight"):
		attack_meter.value += 15

func next_pokemon() -> void:
	# RETURNING RANDOMIZER ID
	current_pokemon_id = battle_hud.pkmn_randomizer()
	database.current_id = current_pokemon_id
	database.play_animation_from_id(current_pokemon_id)
	database.update_dex_info_by_id(current_pokemon_id)
	value = max_value
	catch_odds = 0.0
	healthbar_enemy.texture_progress = load("res://assets/GUI/healthbar/healthbar2.png")
	print("New Pokemon ID:", current_pokemon_id)

func next_pokemon_hero() -> void:
	# PLAYER HEALTH BAR DECREASE
	health_bar_player.value -= health_bar_player.step
	
	# PLAYER HP BELOW ZERO
	if health_bar_player.value <= health_bar_player.min_value:
		current_hero_mon_id += 1
		health_bar_player.value = max_value
		health_bar_player.texture_progress = load("res://assets/GUI/healthbar/healthbar2.png")
		trainer_mon.play(str(current_hero_mon_id))
		battle_text.text = "GO! next mon!"
	# LOOP THROUGH PLAYER MONS
		if current_hero_mon_id > 6:
			current_hero_mon_id = 1
			trainer_mon.play(str(current_hero_mon_id))
	# PIKACHU
	if current_hero_mon_id == 1:
		pkmn_name_battle_player.text = "Pikachu"
		level_display_player.text = "lv. 72"
		trainer_mon.scale.x = 5
		trainer_mon.scale.y = 5
	# BLASTOISE
	if current_hero_mon_id == 2:
		pkmn_name_battle_player.text = "Blastoise"
		level_display_player.text = "lv. 70"
		trainer_mon.scale.x = 5
		trainer_mon.scale.y = 5
	#CHARIZARD
	if current_hero_mon_id == 3:
		pkmn_name_battle_player.text = "Charizard"
		level_display_player.text = "lv. 64"
		trainer_mon.scale.x = 4
		trainer_mon.scale.y = 4
	# VENUSAUR
	if current_hero_mon_id == 4:
		pkmn_name_battle_player.text = "Venusaur"
		level_display_player.text = "lv. 68"
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


func _on_button_fight_pressed() -> void:
	# ENABLING BUTTONS
	disable_battle_buttons()
	battle_text.text = "..."
	var roll = randi_range(1, 100)
	var hit_chance = 30
	
	if roll >= hit_chance:
		battle_animations.play("damage_taken")
	else:
		battle_animations.play("hero_mon_damage")
		

	# ENEMY POKEMON FAINTED
	if value <= min_value:
		battle_text.text = "They fainted!"
		print("Pokemon fainted ID:", current_pokemon_id)
		next_pokemon()
	
	

# RUN BUTTON
func _on_button_run_pressed() -> void:
	run_away_sfx.play()
	run_fade.visible = true
	disable_battle_buttons()
	battle_animations.play("run_away_fade")
	
	var random_image = randi_range(1,7)
	if random_image == 1:
		background_pic.texture = load("res://assets/media/images/backgrounds/cave_art_better.jpeg")
	if random_image == 2:
		background_pic.texture = load("res://assets/media/images/backgrounds/ssnow_art.png")
	if random_image == 3:
		background_pic.texture = load("res://assets/media/images/backgrounds/ssnow_art.png")
	if random_image == 4:
		background_pic.texture = load("res://assets/media/images/backgrounds/forest_art_better.jpeg")
	if random_image == 5:
		background_pic.texture = load("res://assets/media/images/backgrounds/volcano_art_better.jpeg")
	if random_image == 6:
		background_pic.texture = load("res://assets/media/images/backgrounds/underwater_art_better.jpeg")
	if random_image == 7:
		background_pic.texture = load("res://assets/media/images/backgrounds/graveyard_art.jpg")
	
	battle_text.text = "Got away safely"
	next_pokemon()



# CATCH BUTTON
func _on_button_catch_pressed() -> void:
	battle_text.text = "..."
	disable_battle_buttons()
	var bonus = randi_range(1, 15)
	var threshold = bonus + catch_odds
	var roll = randi_range(1, 100)
	
	print("Catch roll:", roll, "| Threshold:", threshold)
	print("Attempting catch ID:", current_pokemon_id)
	# SUCCESS
	if roll < threshold:
		pokeball.visible = true
		battle_animations.play("catching_succes")
		# SAFETY CHECK
		if current_pokemon_id >= 0:
			database.catch_pkmn_update_by_id(current_pokemon_id)
		else:
			print("ERROR: Invalid Pokemon ID")
	
	else:
		battle_animations.play("catching_failure")
		


func _on_battle_animations_animation_finished(anim_name: StringName) -> void:
	# END OF FIGHT
	button_fight.disabled = false
	if anim_name == "damage_taken":
		battle_text.text = "It's a hit!"
		# UPDATING HEALTHBAR AFTER DAMAGE
		value -= step
		catch_odds += 10.0
		# UPDATING HEALTHBAR ENEMY
		if healthbar_enemy.value > 50:
			healthbar_enemy.texture_progress = load("res://assets/GUI/healthbar/healthbar2.png")
		elif healthbar_enemy.value > 20:
			healthbar_enemy.texture_progress = load("res://assets/GUI/healthbar/healthbar3.png")
		else:
			healthbar_enemy.texture_progress = load("res://assets/GUI/healthbar/healthbar4.png")

		if value <= 0:
			next_pokemon()
	elif anim_name == "hero_mon_damage":
		battle_text.text = "You missed..."
		# UPDATING HEALTHBAR PLAYER
		if health_bar_player.value > 61:
			health_bar_player.texture_progress = load("res://assets/GUI/healthbar/healthbar2.png")
		elif health_bar_player.value > 40:
			health_bar_player.texture_progress = load("res://assets/GUI/healthbar/healthbar3.png")
		else:
			health_bar_player.texture_progress = load("res://assets/GUI/healthbar/healthbar4.png")
		next_pokemon_hero()
	# END OF RUN
	elif anim_name == "run_away_fade":
	
		run_fade.visible = false
	elif anim_name == "catching_succes":
		battle_text.text = "CAUGHT!"
		pokeball.visible = false
		animations.scale = Vector2(3.217,3.17)
		next_pokemon()
	elif anim_name == "catching_failure":
		battle_text.text = "They broke free!"
		pokeball.visible = false
	enable_battle_buttons()


func disable_battle_buttons():
	button_fight.disabled = true
	button_run.disabled = true
	button_catch.disabled = true


func enable_battle_buttons():
	button_fight.disabled = false
	button_run.disabled = false
	button_catch.disabled = false
	
