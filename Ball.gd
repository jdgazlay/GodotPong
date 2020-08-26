extends KinematicBody2D

onready var direction := Vector2.RIGHT
onready var screen_size := get_viewport_rect().size
export var speed := 100
var velocity := Vector2.RIGHT


func _process(delta: float) -> void:
	velocity = direction * speed * delta


func _physics_process(delta: float) -> void:
	var collisions := move_and_collide(velocity)
	
	if collisions:
		direction.y = -direction.y


func _on_Area2D_body_entered(body: PhysicsBody2D) -> void:
	if "paddle" in body.get_groups():
		direction.x = -1 if direction.x == 1 else 1
		speed += 20

		direction.y = rand_range(-1.0, 1.0)
