extends CharacterBody2D
class_name Player

# Player Movement
# Player moves on a grid, Snaps the actual player while tweening the sprite, checks for collisions.

var movement_controller: PlayerMovement
var inventory: PlayerInventory
var visuals: PlayerVisuals


signal moved(dir: Vector2)
func move(dir: Vector2):
	global_position += dir * EventManager.TILE_SIZE
	moved.emit(dir)
	
	
