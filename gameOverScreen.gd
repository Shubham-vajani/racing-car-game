extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_main_menu_pressed():
	pass # Replace with function body.


func _on_exit_pressed():
	pass # Replace with function body.

# this will reload the cuurent scene
func _on_retry_pressed():
	get_tree().reload_current_scene()


# this will show content of the label
func show_label(text):
	label1.text = text # this will set content of label as text
	label1.show() # this will make sure content is shown at assigned place in label


# this will show content of the label
func show_personalBest(best):
	label2.text = best  # this will set content of label as text
	label2.show() # this will make sure content is shown at assigned place in label


# this will show content of the label
func show_score(current):
	label3.text = current  # this will set content of label as text
	label3.show() # this will make sure content is shown at assigned place in label

	
# this will allow change engine to update time varriable
func set_score(value):
	$Panel/score.text = "Time : " + str(value)

# this will allow player to change or update personalbest arriable
func set_personalBest(value):
	$"Panel/personalBest".text = "Personal Best : " + str(value)
	

# this function will quit the game when this button is pressed
func _on_button_pressed():
	get_tree().paused = false # this function un pauses game before quiing gamw
	get_tree().quit()

# this will reload the cuurent scene
func _on_button_2_pressed():
	get_tree().paused = false # this function un pauses game before relading it
	get_tree().reload_current_scene()
	


# this function will change current scene to main menu
func _on_button_3_pressed():
	get_tree().paused = false # this function un pauses game before changing scene to main menu
	get_tree().change_scene_to_file("res://main_menu.tscn")


# this function will reload current scene when button will be pressed 
func _on_button_4_pressed():
	get_tree().paused = false  #this function un pauses game before relading it
	get_tree().reload_current_scene()
	

# this will show buttons
func show_buttons():
	button1.show()
	button2.show()
	button3.show()


# i havde delcared  few label and buttons
@onready var label1 = $Panel/Label
@onready var label2 = $Panel/personalBest
@onready var label3 = $Panel/score
@onready var button1 = $Button
@onready var button2 = $Button3
@onready var button3 = $Button4


