extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


# i have given varriable name to sound
@onready var music = $AudioStreamPlayer

# this will show content of the label
func show_label(name):
	label1.text = name  # this will set content of label as text
	label1.show()  # this will make sure content is shown at assigned place in label
	

# this will show content of the label
func show_label1(text):
	label2.text = text  # this will set content of label as text
	label2.show()  # this will make sure content is shown at assigned place in label
	
	
# this will show content of the label
func show_player1(message):
	label3.text = message  # this will set content of label as text
	label3.show()  # this will make sure content is shown at assigned place in label
	
	
# this will show content of the label
func show_player2(details):
	label4.text = details  # this will set content of label as text
	label4.show()  # this will make sure content is shown at assigned place in label
	
	
# this will change current scene to help menu
func _on_button_pressed():
	get_tree().change_scene_to_file("res://help3.tscn")
	

# this will play the background sound when this Ui Screen appears
func background_music():
	music.play()


# i have declared few label and button and car photos
@onready var label1 = $Label
@onready var label2 = $Label2
@onready var label3 = $Label3
@onready var label4 = $Label4
@onready var button1 = $Button
@onready var car1 = $"Label3/White-mercedes-benz-top-car-png-4"
@onready var car2 = $"Label4/Top-car-view-png-34861"


# this will show the buttons
func buttons():
	button1.show()

# this will show car image
func car():
	car1.show()
	car2.show()

