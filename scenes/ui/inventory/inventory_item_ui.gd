extends HBoxContainer
class_name InventoryItemUI

@export var icon: TextureRect
@export var name_label: Label
@export var count_label: Label

func update(item: Item, count: int = 1):
	icon.texture = item.sprite
	name_label.text = item.name
	count_label.text = str("x", count)
	count_label.visible = count > 1
