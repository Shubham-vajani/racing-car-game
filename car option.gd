extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


#this will show content of label
func show_label(label):
	label.text = label
	label.show()


# i have declared few label , buttons and image
@onready var label = $Label
@onready var button = $Button
@onready var button2 = $Button2
@onready var button3 = $Button3
@onready var button4 = $Button4
@onready var image1 = $"Top-car-view-png-34861"
@onready var image2 = $"White-mercedes-benz-top-car-png-3"
@onready var image3 = $Car2
@onready var image4 = $"Back-512"


# this will change current scene to track 1 or take player to trak 1
func _on_button_pressed():
	get_tree().change_scene_to_file("res://background.tscn")
	

# this will change current scene to track 2 or take player to trak 2
func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://back 2.tscn")
	

# this will change current scene to track 3 or take player to trak 3
func _on_button_3_pressed():
	get_tree().change_scene_to_file("res://background_3.tscn")
	

# this will take player back to against menu
func _on_button_4_pressed():
	get_tree().change_scene_to_file("res://against.tscn")


# this will show button
func butto_show():
	button.show()
	button2.show()
	button3.show()
	button4.show()
	

# this will show all the image
func Image():
	image1.show()
	image2.show()
	image3.show()
	image4.show()


# i have assigned varriable name to Sound
@onready var sound =$AudioStreamPlayer

# this will play the background sound when this Ui Screen appears
func background_music():
	sound.play()
