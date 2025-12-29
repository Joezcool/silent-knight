extends Resource
class_name Item

@export var name: String
@export_multiline var description: String

## A note on structure:
# Item methods will function somewhat as static methods. Since resources just hold data,
# it will be the inventory's responsibility to call upon these functions so that data is modified
# on the player.
# 
# Sure, the items can contain details for behaviour, but the items themselves should never be modified. 


func on_equip(p: Player):
	pass
	
func on_dequip(p: Player):
	pass
