extends CharacterBody2D

@onready var killzone: Area2D = $Killzone
@onready var attack_shape: CollisionShape2D = $Killzone/CollisionShape2D
@onready var timer: Timer = $Timer
@onready var health_label: Label = $Health
@onready var score_label: Label = $Score
@onready var menu: Control = $Camera2D/Menu

var speed: float  # Movement speed
var dash_speed: float # Dash speed
var dash_duration: float
var dash_cooldown: float
var is_dashing: bool
var dash_timer: float
var dash_cooldown_timer: float
var health: int
var dead: bool
var score: int
var rotation_speed: float # speed the player rotates

func _ready() -> void:
	attack_shape.disabled = true
	speed = 200.0  # Movement speed
	dash_speed = 400.0
	dash_duration = 0.2
	dash_cooldown = 1.0
	is_dashing = false
	dash_timer = 0.0
	dash_cooldown_timer = 0.0
	rotation_speed = 2.0
	score = 0
	health = 100
	health_label.text = str(health)
	score_label.text = "Score: " + str(score)
	dead = false

func _process(delta: float) -> void:
	var mouse_position = get_global_mouse_position()
	var direction = mouse_position - position
	var angle = direction.angle()
	
	rotation = lerp_angle(rotation, angle, rotation_speed*delta)

func handle_movement(delta):
	var direction := Vector2.ZERO

	if Input.is_action_pressed("move_up"):
		direction.y -= 1
	if Input.is_action_pressed("move_down"):
		direction.y += 1
	if Input.is_action_pressed("move_left"):
		direction.x -= 1
	if Input.is_action_pressed("move_right"):
		direction.x += 1
	
	direction.normalized()
	velocity = direction*speed
	
func start_dash():
	var dash_direction = velocity.normalized()
	
	is_dashing = true
	dash_timer = dash_duration
	dash_cooldown_timer = dash_cooldown
	
	velocity = dash_direction * dash_speed

func _physics_process(_delta: float) -> void:
	if dash_cooldown_timer > 0:
		dash_cooldown_timer -= _delta
	
	if is_dashing:
		dash_timer -= _delta
		if dash_timer <= 0:
			is_dashing = false
			velocity = Vector2.ZERO
	
	if not is_dashing:
		handle_movement(_delta)
	
	if Input.is_action_just_pressed("dash") and dash_cooldown_timer <= 0 and not is_dashing:
		start_dash()
		
	if Input.is_action_pressed("attack"):
		playerAttack()
	if Input.is_action_just_released("attack"):
		if not dead:
			attack_shape.disabled = true
	if Input.is_action_just_released("pause_game"):
		menu.game_paused()

	move_and_slide()

func playerAttack() -> void:
	if not dead:
		attack_shape.disabled = false

func die() -> void:
	Engine.time_scale = 0.5
	attack_shape.queue_free()
	timer.start()
	
func add_score(amount: int) -> void:
	score += amount
	score_label.text = "Score: " + str(score)

func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()
