extends CharacterBody2D

const SPEED = 60

signal enemy_died

var health: int
var direction: int
var dead: bool
var is_dashing: bool

@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var health_label: Label = $Health

func _ready() -> void:
	health = 100
	health_label.text = str(health)
	direction = 1
	dead = false
	is_dashing = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
		
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	
	position.x += direction * SPEED * delta
	
func die() -> void:
	emit_signal("enemy_died", position)
	queue_free()  # Call this after a slight delay
