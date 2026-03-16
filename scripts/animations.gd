extends AnimatedSprite2D
@onready var animation_player_battle = $"."

func _process(delta: float) -> void:
	animation_player_battle.play()
	
