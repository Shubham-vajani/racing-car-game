extends CharacterBody2D

class_name opponent

@onready var _follow :PathFollow2D = get_parent()
var _speed :float = 900.0

func _physics_process(delta):
	_follow.progress += _speed * delta


