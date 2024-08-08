extends Node2D

const SPEED = 60
var direction = 1
@onready var raycastright = $raycastright
@onready var raycastleft = $raycastleft
@onready var animated_sprite = $AnimatedSprite2D

func _process(delta):
	if raycastright.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if raycastleft.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
		
	position.x += direction*SPEED*delta
