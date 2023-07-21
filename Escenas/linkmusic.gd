extends Node

# Referencia a la escena "GlobalMusic"
var globalMusic

func _ready():
	# Cargar la escena "GlobalMusic" al inicio
	globalMusic = preload("res://Escenas/musica de adentro.tscn")
	add_child(globalMusic.instance())

	# Configurar el nodo actual para que no se elimine al cambiar de escena
	set_process(false)
	set_physics_process(false)
	set_process_input(false)
