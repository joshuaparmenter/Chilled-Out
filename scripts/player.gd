extends CharacterBody2D

var speed: float = 200.0  # Movement speed

func _physics_process(delta: float) -> void:
	var direction := Vector2.ZERO

	if Input.is_action_pressed("move_up"):
		direction.y -= 1
	if Input.is_action_pressed("move_down"):
		direction.y += 1
	if Input.is_action_pressed("move_left"):
		direction.x -= 1
	if Input.is_action_pressed("move_right"):
		direction.x += 1

	direction = direction.normalized()  # Normalize to prevent faster diagonal movement
	velocity = direction * speed
	move_and_slide()
