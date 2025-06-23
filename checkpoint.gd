extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


# i have declared some scene to UI
@onready var win = $"../CanvasLayer3/gameOverScreen"
@onready var loose = $"../CanvasLayer4/Control"

# this will work when either of player or ai enter's to assigned area
func _on_area_2d_area_entered(area):
	if area.get_parent() is shubham1:
		win.visible = true
		await get_tree().create_timer(1).timeout
		get_tree().quit()
	
	if area.get_parent() is opponent:
		loose.visible = true
		await get_tree().create_timer(1).timeout
		get_tree().quit()
