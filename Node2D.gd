extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


# i have delcared label and buttons 
@onready var label = $Label
@onready var button1 = $Control/ColorRect/Button
@onready var button2 = $Control/ColorRect/Button2
@onready var button3 = $Control/ColorRect/Button3


#this will show content of label 
func show_label(label):
	label.text = label# this will take text of label
	label.show()# and this will show that text on label and will ensure it is displayed on right place


# it connects sound setting UI to this button so when player presses this button it will take him to sound menu
func _on_button_pressed():
	get_tree().change_scene_to_file("res://sound.tscn")

# it connects sound main menu scence to this button so when player presses this button it will take him to main menu
func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://main_menu.tscn")

# it connects help menu to this button so when player presses this button it will take him to help menu
func _on_button_3_pressed():
	get_tree().change_scene_to_file("res://help3.tscn")


# this will show content of buttons
func show_buttons():
	button1.show()# this will show button 1 to player on the place assgined 
	button2.show()# this will show button 1 to player on the place assgined 
	button3.show()# this will show button 1 to player on the place assgined 


# i have assigned varriable name to Sound
@onready var sound =$AudioStreamPlayer


# this will play the background sound when this Ui Screen appears
func background_music():
	sound.play()
