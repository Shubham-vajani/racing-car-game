extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# this function will have to change current scene to sound UI
func _on_sound_button_pressed():
	get_tree().change_scene_to_file("res://sound.tscn")

# this function will change current scene to help UI
func _on_help_button_2_pressed():
	get_tree().change_scene_to_file("res://help.tscn")


func _on_back_button_3_pressed():
	get_tree().change_scene_to_file("res://pausemenu.tscn")
