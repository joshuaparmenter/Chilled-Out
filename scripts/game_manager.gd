extends Node2D

const relic_scene = preload("res://scenes/relic.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var slime: CharacterBody2D = $"../Enemies/Slime"
	var slime2: CharacterBody2D = $"../Enemies/Slime2"
	var slime3: CharacterBody2D = $"../Enemies/Slime3"
	var slime4: CharacterBody2D = $"../Enemies/Slime4"

	slime.connect("enemy_died", Callable(self, "_on_enemy_died"))
	slime2.connect("enemy_died", Callable(self, "_on_enemy_died"))
	slime3.connect("enemy_died", Callable(self, "_on_enemy_died"))
	slime4.connect("enemy_died", Callable(self, "_on_enemy_died"))

func _on_enemy_died(spawn_position):
	call_deferred("_deferred_add_child", spawn_position)

func _deferred_add_child(spawn_position):
	var relic = relic_scene.instantiate()
	relic.position = spawn_position
	add_child(relic)

## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
