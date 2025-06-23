extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
# i have given varriable name to label and button
@onready var label = $Label
@onready var button1 = $Label/Button
@onready var button2 = $Label/Button2
@onready var button3 = $Label/Button3


# i have given varriable name to car's
@onready var car1 = $Car
@onready var car2 = $Car1


#this will show content of label
func show_label(label):
	label.text = label # this will take text of label
	label.show()# and this will show that text on label and will ensure it is displayed on right place


# i have assigned varriable name to Sound
@onready var sound =  $AudioStreamPlayer


# this will display buttons
func show_button():
	button1.show()# this will show button 1 to player on the place assgined 
	button2.show()# this will show button 2 to player on the place assgined 
	button3.show()# this will show button 3 to player on the place assgined 


# this will show car images
func show_car():
	car1.show()# this will make sure image of car is displayed at assgined place
	car2.show()# this will make sure image of car is displayed at assgined place


# this will play the background sound when this Ui Screen appears
func background_music():
	sound.play()


#it changes current scene to against menu
func _on_button_pressed():
	get_tree().change_scene_to_file("res://against.tscn")


# it changes current scene to option menu
func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://option_menu.tscn")


# if player presses this button he will be able to quit the game
func _on_button_3_pressed():
	get_tree().quit()
