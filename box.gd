extends CharacterBody2D

var JUMP_VELOCITY = 300
var MOVE_VELOCITY = 600

func _ready():
	pass

func _process(delta):
	position.x += MOVE_VELOCITY * delta
	MOVE_VELOCITY -= 5#saved here
