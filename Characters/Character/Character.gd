extends KinematicBody2D

export var SPEED = 200

var direction = Vector2()

func _ready():
	pass

func _process(delta):
	pass

func movement():
	if Input.is_action_pressed("right") and Input.is_action_pressed("left"):
		direction.x = 0
	elif Input.is_action_pressed("right"):
		direction.x = 1
		
	elif Input.is_action_pressed("left"):
		direction.x = -1
	else:
		direction.x = 0
	
	if Input.is_action_pressed("up") and Input.is_action_pressed("down"):
		direction.y = 0
	elif Input.is_action_pressed("up"):
		direction.y = -1
	elif Input.is_action_pressed("down"):
		direction.y = 1
	else:
		direction.y = 0
	
	move_and_slide(direction * SPEED)
	pass