extends Node

var musciadecasa = load("res://Sounds/Audio de WhatsApp 2023-07-21 a las 13.46.17.mp3")

func _play_music():
	 
	$casa_musica.stream = musciadecasa
	$casa_musica.play()

func _stop_music():
	
	$casa_musica.stop()
