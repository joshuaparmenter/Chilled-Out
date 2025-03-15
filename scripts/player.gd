extends CharacterBody2D
@onready var killzone: Area2D = $Killzone
@onready var attack_shape: CollisionShape2D = $Killzone/CollisionShape2D
@onready var timer: Timer = $Timer
@onready var health_label: Label = $Health
@onready var score_label: Label = $Score
@onready var menu: Control = $Camera2D/Menu


var speed: float  # Movement speed
var health: int
var dead: bool
var score: int

func _ready() -> void:
	attack_shape.disabled = true
	speed = 200.0  # Movement speed
	score = 0
	health = 100
	health_label.text = str(health)
	score_label.text = "Score: " + str(score)
	dead = false

func _physics_process(_delta: float) -> void:
		
	var direction := Vector2.ZERO

	if Input.is_action_pressed("move_up"):
		direction.y -= 1
	if Input.is_action_pressed("move_down"):
		direction.y += 1
	if Input.is_action_pressed("move_left"):
		direction.x -= 1
	if Input.is_action_pressed("move_right"):
		direction.x += 1
	if Input.is_action_pressed("attack"):
		playerAttack()
	if Input.is_action_just_released("attack"):
		if not dead:
			attack_shape.disabled = true
	if Input.is_action_just_released("pause_game"):
		menu.game_paused()
	direction = direction.normalized()  # Normalize to prevent faster diagonal movement
	velocity = direction * speed
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
