extends Area2D

@export var launch_force = -600

func _on_body_entered(body):
	if body is CharacterBody2D:
		body.velocity.y = launch_force
