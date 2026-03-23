extends AudioStreamPlayer2D

const battle_music = preload("res://assets/media/audio/bgm/battle_theme.wav")

func _play_music(music: AudioStream, volume = 0.0):
	if stream == music:
		return
	
	stream = music
	volume_db = volume
	play()
	
func play_music_battle():
	_play_music(battle_music)
