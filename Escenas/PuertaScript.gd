extends Area2D

export (String) var escena

func _on_Puerta_body_entered(body):
	
	Global.from_level = get_parent().name
	
	if body.name == "Player":
	
		SceneTransition.change_scene("res://Escenas/"+escena+".tscn")
		
