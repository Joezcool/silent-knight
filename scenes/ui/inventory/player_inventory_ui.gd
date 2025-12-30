extends Control
class_name PlayerInventoryUI

@export var player: Player
@onready var inventory_item_scn = preload("res://scenes/ui/inventory/inventory_item_horizontal.tscn")
@onready var items_root := $PanelContainer/VBoxContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player.inventory.inventory_modified.connect(_update_ui)
	_update_ui()

func _update_ui():
	
	items_root.get_children().map(func (x): x.queue_free()) # Clear all children
	
	var items := player.inventory.get_items_and_stacks()
	print(items)
	for item in items:
		var inv_ui: InventoryItemUI = inventory_item_scn.instantiate()
		inv_ui.update(item, items[item])
		items_root.add_child(inv_ui)
