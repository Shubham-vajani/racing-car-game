extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# i have given varriable name to sound
@onready var sound = $AudioStreamPlayer


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#this will show the content of the label
func show_message(text):
	label.text = text  # this will set content of label as text
	label.show()  # this will make sure content is shown at assigned place in label
	
# this will change current scene to help menu
func _on_button_pressed():
	get_tree().change_scene_to_file("res://help.tscn")


# this will change current scene to option menu
func _on_button_3_pressed():
	get_tree().change_scene_to_file("res://option_menu.tscn")


# this will change current scene to help menu
func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://help2.tscn")


# this will show the buttons
func buttons():
	button1.show()
	button2.show()
	button3.show()



# this will play the background sound when this Ui Screen appears
func background_music():
	sound.play()


# i have declared few label and button
@onready var label = $Label
@onready var button1 = $Button
@onready var button2 = $Button2
@onready var button3 = $Button3
