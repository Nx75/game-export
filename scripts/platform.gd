extends AnimatableBody2D

const SPEED = 120

var point_a = Vector2(448, 768)
var point_b = Vector2(1632, 768)

var target

func _ready():
	target = point_b

func _physics_process(delta):
	position = position.move_toward(target, SPEED * delta)

	if position.distance_to(target) < 2:
		if target == point_b:
			target = point_a
		else:
			target = point_b
