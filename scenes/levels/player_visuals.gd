extends Node2D
class_name PlayerVisuals

@export var player: Player
var sprite_tween: Tween
@export_range(0.01, 0.3, 0.01) var move_tween_duration := .185


@export var sprite: Sprite2D
@export var night_light: PointLight2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player.visuals = self
	player.moved.connect(on_player_moved)
	

func on_player_moved(dir: Vector2):
	global_position -= dir * EventManager.TILE_SIZE
	if sprite_tween:
		sprite_tween.kill()
	sprite_tween = create_tween()
	sprite_tween.set_process_mode(Tween.TWEEN_PROCESS_PHYSICS)
	sprite_tween.tween_property(self, "global_position", player.global_position, move_tween_duration).set_trans(Tween.TRANS_SINE)
