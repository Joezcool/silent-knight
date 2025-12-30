extends CollisionShape2D
class_name PlayerMovement

@export var player: Player 

func _ready() -> void:
	player.movement_controller = self

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_up") and !$Up.is_colliding():
		player.move(Vector2(0, -1))
	elif event.is_action_pressed("ui_down") and !$Down.is_colliding():
		player.move(Vector2(0, 1))
	elif event.is_action_pressed("ui_left") and !$Left.is_colliding():
		player.move(Vector2(-1, 0))
	elif event.is_action_pressed("ui_right") and !$Right.is_colliding():
		player.move(Vector2(1, 0))
