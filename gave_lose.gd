extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


# i have declared few label and button
@onready var label = $Label
@onready var label2 = $Label2
@onready var button1 = $Button
@onready var button2 = $Button2
@onready var button3 = $Button3

# this will show content of the label
func show_label(text):
	label.text = text  # this will set content of label as text
	label.show() # this will make sure content is shown at assigned place in label
	
# this will show content of the label
func show_message(message):
	label2.text = message   # this will set content of label as text
	label2.show() # this will make sure content is shown at assigned place in label

# his will show the buttons 
func buttons():
	button1.show()
	button2.show()
	button3.show()
	

# this function will quit the game when this button will be pressed
func _on_button_pressed():
	get_tree().paused = false # this function un pauses game before quiting it
	get_tree().quit()

# this function will change current scene to main menu when this will be pressed
func _on_button_2_pressed():
	get_tree().paused = false # this function un pauses game before changing scene to main menu
	get_tree().change_scene_to_file("res://main_menu.tscn")


# this function will reload current scene when button will be pressed 
func _on_button_3_pressed():
	get_tree().paused = false # this function un pauses game before reloading current scene
	get_tree().reload_current_scene()


