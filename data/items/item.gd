extends Resource
class_name Item

@export var sprite: Texture2D
@export var name: String
@export_multiline var description: String
@export var is_stackable: bool = true

func on_equip(p: Player):
	pass
	
func on_dequip(p: Player):
	pass
