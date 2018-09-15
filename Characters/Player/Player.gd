extends "res://Characters/Character/Character.gd"

onready var TYPE_PLAYER = 1

func _ready():
	pass

func _process(delta):
	movement()
	check()
	pass
	
func check():
	for body in $Area.get_overlapping_bodies():
		if (body.has_node("Enemy") and not body.is_a_parent_of(self)):
			body.queue_free()
	pass
