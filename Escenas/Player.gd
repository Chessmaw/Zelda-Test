extends KinematicBody2D

export (float) var speed = 350

var motion = Vector2.ZERO

func _physics_process (delta):

	if Input. is_action_pressed("ui_right"):
		$AnimatedSprite.play("Walk_Side")
		$AnimatedSprite.flip_h= false
		motion.x = speed
		motion.y = 0
	elif Input.is_action_pressed("ui_left"):
		$AnimatedSprite.play("Walk_Side")
		$AnimatedSprite.flip_h= true
		motion.x =-speed
		motion.y = 0
	elif Input.is_action_pressed("ui_down"):
		$AnimatedSprite.play("Walk_Down")
		$AnimatedSprite.flip_h= false
		motion.y = speed
		motion.x = 0
	elif Input.is_action_pressed("ui_up"):
		$AnimatedSprite.play("Walk_Up")
		$AnimatedSprite.flip_h= false
		motion.y =-speed
		motion.x=0
	else: 
		$AnimatedSprite.play("Idle_Down")
		$AnimatedSprite.flip_h= false
		motion.x = 0
		motion.y = 0
	move_and_slide(motion)
