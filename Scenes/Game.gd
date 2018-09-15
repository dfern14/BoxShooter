extends Node

var scn_enemy = preload("res://Characters/Enemy/Enemy.tscn")

func _ready():
	make_enemy()
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func make_enemy():
	var enemy = scn_enemy.instance()
	pass

