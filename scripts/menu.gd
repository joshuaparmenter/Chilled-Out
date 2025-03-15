extends Control
@onready var player: CharacterBody2D = $"../player"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	process_mode = Node.PROCESS_MODE_ALWAYS  # Keep processing even when paused
	hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func game_paused() -> void:
	visible = !visible
	get_tree().paused = visible

func _on_start_button_pressed() -> void:
	visible = !visible
	get_tree().paused = visible

func _on_options_button_pressed() -> void:
	pass # Replace with function body.

func _on_quit_button_pressed() -> void:
	get_tree().paused = !visible
	get_tree().reload_current_scene()
	
