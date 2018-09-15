extends "res://Characters/Character/Character.gd"

onready var TYPE_PLAYER = 1

func _ready():
	
	pass

func _process(delta):
	check()
	movement()
	pass
	
func check():
	for body in $Area.get_overlapping_bodies():
		if ( body.get(TYPE_ENEMY) == 1 ):
			queue_free()
		pass
	pass	