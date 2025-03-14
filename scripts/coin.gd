extends Area2D

#@onready var game_manager = %GameManager
@onready var animation_player: AnimationPlayer = $AnimationPlayer

var amount: int

func _ready() -> void:
	amount = 1

func _on_body_entered(body: Node2D) -> void:
	body.add_score(amount)
	queue_free()
