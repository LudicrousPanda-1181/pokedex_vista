extends Control


func _ready() -> void:
	
	# MAKING THE FONT OF THE DEX BLACK
	$pkmn_name.add_theme_color_override("font_color", Color(0.0, 0.0, 0.0, 1.0))
	$pkmn_name/pkmn_name_box.add_theme_color_override("font_color", Color(0.0, 0.0, 0.0, 1.0))
	
	$pkmn_type.add_theme_color_override("font_color", Color(0.0, 0.0, 0.0, 1.0))
	$pkmn_type/pkmn_type_box.add_theme_color_override("font_color", Color(0.0, 0.0, 0.0, 1.0))
	
	$pkmn_height.add_theme_color_override("font_color", Color(0.0, 0.0, 0.0, 1.0))
	$pkmn_height/pkmn_height_box.add_theme_color_override("font_color", Color(0.0, 0.0, 0.0, 1.0))
	
	$pkmn_weight.add_theme_color_override("font_color", Color(0.0, 0.0, 0.0, 1.0))
	$pkmn_weight/pkmn_weight_box.add_theme_color_override("font_color", Color(0.0, 0.0, 0.0, 1.0))
	
	$pkmn_evolve.add_theme_color_override("font_color", Color(0.0, 0.0, 0.0, 1.0))
	$pkmn_evolve/pkmn_evolve_box.add_theme_color_override("font_color", Color(0.0, 0.0, 0.0, 1.0))
	
	$pkmn_desc.add_theme_color_override("font_color", Color(0.0, 0.0, 0.0, 1.0))
	$pkmn_desc/pkmn_desc_box.add_theme_color_override("font_color", Color(0.0, 0.0, 0.0, 1.0))
	
	$pkmn_caught.add_theme_color_override("font_color", Color(0.0, 0.0, 0.0, 1.0))
	$pkmn_caught/pkmn_caught_box.add_theme_color_override("font_color", Color(0.0, 0.0, 0.0, 1.0))
	
	$pkmn_nmbr.add_theme_color_override("font_color", Color(0.0, 0.0, 0.0, 1.0))
	$pkmn_nmbr/pkmn_nmbr_box.add_theme_color_override("font_color", Color(0.0, 0.0, 0.0, 1.0))
