extends Button



func _on_Button_pressed():
	SceneTransition.change_scene("res://Escenas/Cuarto de link.tscn")

func _on_Button_mouse_entered():
	$"../metal".play()





func _on_Button_mouse_exited():
	$"../metal".stop()
