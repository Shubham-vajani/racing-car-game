extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# i have declared few labels and button
@onready var label1 = $Label
@onready var label2 = $Label2
@onready var label3 = $ColorRect/Label
@onready var button = $"ColorRect/Button 2"
@onready var Penality1 = $Label3
@onready var penality2 = $Label4
@onready var stone = $Stone1
@onready var truck = $Truck1
@onready var label4 =$Label3
@onready var label5 =$Label4


# this will show content of button and will make sure buttons are at assigned place 
func show_buttons():
	button.show()


#this will show content of label
func show_message(message):
	label3.text = message# this will take text of label
	label3.show()# and this will show that text on label and will ensure it is displayed on right place


#this will show content of label
func show_label(label):
	label1.text = label# this will take text of label
	label1.show()# and this will show that text on label and will ensure it is displayed on right place


#this will show content of label
func show_subHeading(heading):
	label2.text = heading# this will take text of label
	label2.show()# and this will show that text on label and will ensure it is displayed on right place in screen

	
# it connects help menu to this button so now when player clicks this button it will take him to help menu
func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://help3.tscn")


# i have assigned varriable name to Sound
@onready var sound =$AudioStreamPlayer

# this will play the background sound when this Ui Screen appears
func background_music():
	sound.play()


# this will show car and truck images
func images():
	stone.show()# this will show image of stone at assgined place in screen
	truck.show()# this will show image of truck at assgined place in screen

#this will show content of label
func show_label3(label3):
	label3.text = label3# this will take text of label
	label3.show()# and this will show that text on label and will ensure it is displayed on right place on screen
	
#this will show content of label
func show_label4(label4):
	label4.text = label4# this will take text of label
	label4.show()# and this will show that text on label and will ensure it is displayed on right place on screen
	

