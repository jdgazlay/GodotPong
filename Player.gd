extends KinematicBody2D

class_name Player

var direction := Vector2.ZERO
onready var screen_size := get_viewport_rect().size
export var speed = 200
var velocity := Vector2.ZERO

func _physics_process(delta: float) -> void:
	velocity = direction * speed
	velocity = move_and_slide(velocity)
