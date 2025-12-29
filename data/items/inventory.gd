extends Node

@export var items: Array[Item]
var player: Player

func _ready() -> void:
	player = self.get_parent(); # TODO: Refactor this. This is bad practice.
	
	for item in items:
		# Go through array of starting items and register them
		equip(item)

## This should be called when the item is picked up to properly register it and its effects.
func equip(item: Item): 
	# TODO: Verify that instantiation is not necessary here.
	item.on_equip(player)

## This should be called when the item is removed to properly de-register it and its effects.
func dequip(item: Item):
	item.on_dequip(player)
