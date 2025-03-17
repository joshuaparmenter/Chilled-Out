extends Area2D
@onready var game: Node2D = get_tree().current_scene  # Get the main scene
@onready var portal_boundary: CollisionShape2D = $"Portal Boundary"
@onready var portal_manager: Node = get_parent()

var portalScene = preload("res://scenes/portal.tscn")  # Ensure the path is correct
var portal1 
var portal2
var portalToggle: bool = true
var offset = Vector2(-50, 0)  # Adjust the offset for left placement

signal portal_position

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()

func _on_body_entered(_body: Node2D) -> void:
	if (not portal_manager.is_inside_area):  # Make sure it's the player
		emit_signal("portal_position")  # Emit the custom signal
		portal_manager.is_inside_area = true

func _on_body_exited(_body: Node2D) -> void:
	portal_manager.is_inside_area = false
