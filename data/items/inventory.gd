extends Node
class_name PlayerInventory

@export var player: Player
@export var starting_items: Array[Item]
var items: Array[Item]

signal inventory_modified
signal inventory_initialized

func get_items_and_stacks() -> Dictionary[Item, int]:
	# Compose a list of all items with stack count
	var items: Dictionary[Item, int]
	for item in player.inventory.items:
		if items.has(item):
			items[item] += 1
		else:
			items[item] = 1
	return items

func _ready() -> void:
	player.inventory = self
	
	# Go through array of starting items and register them
	for item in starting_items:
		equip(item)
	inventory_initialized.emit()

## This should be called when the item is picked up to properly register it and its effects.
func equip(item: Item): 
	items.append(item)
	item.on_equip(player)
	inventory_modified.emit()

## This should be called when the item is removed to properly de-register it and its effects.
func dequip(item: Item):
	items.erase(item)
	item.on_dequip(player)
	inventory_modified.emit()
