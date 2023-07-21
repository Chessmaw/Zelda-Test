extends Node

# Propiedades del Singleton
var music_enabled := true
var music_volume := 0.5

# Nodo de AudioStreamPlayer
var audio_stream_player

func _ready():
	# Crear el nodo AudioStreamPlayer
	audio_stream_player = AudioStreamPlayer.new()
	add_child(audio_stream_player)
	
	# Cargar el archivo de música (ajusta la ruta según la ubicación de tu archivo de música)
	var music = preload("res://Escenas/musica de adentro.tscn")
	audio_stream_player.stream = music
	
	# Reproducir música si está habilitada
	if music_enabled:
		audio_stream_player.play()
	
	# Hacer el Singleton persistente entre las escenas
	set_as_singleton("MusicSingleton")
