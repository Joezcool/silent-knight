extends Item
class_name StatChangeItem

enum Stats {VISION, STEALTH, ETC}
@export var stat_to_change: Stats
@export var amount: int = 1

func on_equip(p: Player):
	match stat_to_change:
		Stats.VISION:
			var tex: GradientTexture2D = p.visuals.night_light.texture
			tex.width += amount * EventManager.TILE_SIZE
			tex.height += amount * EventManager.TILE_SIZE
		_:
			printerr("Stat not implemented!")
	
func on_dequip(p: Player):
	match stat_to_change:
		Stats.VISION:
			var tex: GradientTexture2D = p.visuals.night_light.texture
			tex.width -= amount * EventManager.TILE_SIZE
			tex.height -= amount * EventManager.TILE_SIZE
		_:
			printerr("Stat not implemented!")
