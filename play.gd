extends Button



func _on_Button_pressed():
	get_tree().change_scene("res://Escenas/casa.tscn")

func _on_Button_mouse_entered():
	$"../metal".play()





func _on_Button_mouse_exited():
	$"../metal".stop()
