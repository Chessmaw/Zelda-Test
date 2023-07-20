extends Area2D

export (String) var escena

func _on_Puerta_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://Escenas/"+escena+".tscn")
