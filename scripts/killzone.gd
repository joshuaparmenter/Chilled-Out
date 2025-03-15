extends Area2D

var body_receiving_damage: Node = null

# Damage parameters
var damage_amount : int = 75
var damage_interval: float = 1.0 # Time in seconds between each damage
var can_damage: bool = false

# Timer for continuous damage
var damage_timer: Timer

# Called when the node enters the scene tree for the first time.
func _ready():
	# Initialize the timer
	damage_timer = Timer.new()
	damage_timer.wait_time = damage_interval
	damage_timer.one_shot = false
	damage_timer.connect("timeout", Callable(self, "_on_damage_timer_timeout"))
	add_child(damage_timer)

func _on_body_entered(body: Node2D) -> void:
	body_receiving_damage = body
	can_damage = true
	_apply_damage()
	damage_timer.start()  # Start the timer when the player enters the area

# Function to apply damage to the player
func _apply_damage():
	if body_receiving_damage and can_damage and not body_receiving_damage.dead:
		body_receiving_damage.health -= damage_amount
		body_receiving_damage.health_label.text = str(body_receiving_damage.health)
		if body_receiving_damage.health <= 0:
			can_damage = false
			body_receiving_damage.dead = true
			body_receiving_damage.die()

func _on_body_exited(_body: Node2D) -> void:
	can_damage = false
	damage_timer.stop()  # Stop the timer when the player exits the area

# This function gets called every time the damage timer times out
func _on_damage_timer_timeout():
	_apply_damage()
