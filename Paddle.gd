extends Player


func _process(delta: float) -> void:
	if Input.is_key_pressed(KEY_W):
		self.direction = Vector2.UP
	elif Input.is_key_pressed(KEY_S):
		self.direction = Vector2.DOWN
	else:
		self.direction = Vector2.ZERO
		