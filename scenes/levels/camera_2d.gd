extends Camera2D
class_name CameraFollow

@export var target: Node2D
@export var lerp_strength: float = 0.8

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if target != null:
		self.global_position = lerp(self.global_position, target.global_position, lerp_strength)
		
