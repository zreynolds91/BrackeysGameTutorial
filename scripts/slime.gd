extends Node2D

const SPEED = 60
const DIRECTION_LEFT = -1
const DIRECTION_RIGHT = 1

var direction = 1

@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite = $AnimatedSprite2D



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_left.is_colliding():
		direction = DIRECTION_RIGHT
		animated_sprite.flip_h = true
	if ray_cast_right.is_colliding():
		direction = DIRECTION_LEFT
		animated_sprite.flip_h = false
	position.x += direction * SPEED * delta
