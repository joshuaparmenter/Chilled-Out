extends Node
@onready var player: CharacterBody2D = get_parent()
@onready var game: Node2D = get_tree().current_scene  # Get the main scene

# Portal Functions
var portalScene = preload("res://scenes/portal.tscn")  # Ensure the path is correct
var portal1
var portal2
var portal1Position: Vector2
var portal2Position: Vector2
var portalToggle: bool = true
var offset = Vector2(-50, 0)  # Adjust the offset for left placement
var bothPortalsPlaced: bool = false
var is_inside_area: bool = false  # Flag to track if player is inside

func _ready() -> void:
	bothPortalsPlaced = false

func place_portal() -> void:
	if(portalToggle):
		if is_instance_valid(portal1):
			portal1.queue_free()
		portal1 = portalScene.instantiate()  # Create a portal
		portal1.connect("portal_position", Callable(self, "_on_portal_position1"))
		portal1.position = player.position + offset  # Set position next to player
		portal1Position = portal1.position
		add_child(portal1)  # Add portal to main scene
		portal1.visible = true
		portalToggle = !portalToggle
	elif(!portalToggle):
		if is_instance_valid(portal2):
			portal2.queue_free()
		portal2 = portalScene.instantiate()  # Create a portal
		portal2.connect("portal_position", Callable(self, "_on_portal_position2"))
		portal2.position = player.position + offset  # Set position next to player
		portal2Position = portal2.position
		add_child(portal2)  # Add portal to main scene
		portal2.visible = true
		portalToggle = !portalToggle
		bothPortalsPlaced = true
	else:
		print("You really broke something bro")


func _on_portal_position1() -> void:
	if bothPortalsPlaced:
		player.global_position = portal2.position
		portalToggle = !portalToggle
		is_inside_area = true
func _on_portal_position2() -> void:
	if bothPortalsPlaced:
		player.global_position = portal1.position
		portalToggle = !portalToggle
		is_inside_area = true
