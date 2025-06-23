extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
# # i have declared some scene to UI
@onready var player1won = $"../CanvasLayer2/Control"

@onready var player2won = $"../CanvasLayer3/Control"

# this will work when either of player or ai enter's to assigned area
func _on_area_2d_area_entered(area):
	if area.get_parent() is part2play1:
		
		player1won.visible = true
		get_tree().paused = true

		
		
	if area.get_parent() is partplay2player2:
		player2won.visible = true
		get_tree().paused = true
