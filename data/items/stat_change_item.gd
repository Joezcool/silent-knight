extends Item
class_name StatChangeItem

enum Stats {SPEED, STEALTH, ETC}
@export var stat_to_change: Stats
@export var amount: int = 1
