extends Control


# i have delcared a varriable by dedaul to be false
var _is_paused : bool= false:
	set = set_paused


#  this will keep track of the event, means will track is the scene is paused or not
func _unhandled_input(event : InputEvent) ->void:
	if event.is_action_pressed("pause"): # it says the if eeven if already pause then
		_is_paused = !_is_paused # then  by presiing pause again it will un pause the game


# this function will pause the game and will show paused menu when escape key will be pressed 
func set_paused(value : bool) ->void:
	_is_paused = value
	get_tree().paused = _is_paused
	visible = _is_paused # it will make sure pause menu is visible when escape key or pause is pressed


# this function will help player to quit the ame when this button will be pressed
func _on_exit_button_pressed():
	get_tree().quit()


# this function will resume the game when this button will be pressed
func _on_resume_button_pressed():
	_is_paused = false # pause is set as false so it means now players can move


# this will show content of the label
func show_label(text):
	label.text = text # takes the content of label and assigns it as text
	label.show()# tthis mmake sure it is presented at right place on label and in screen


# this will show buttons
func Show_buttons():
	button1.show()
	button2.show()


func _on_settings_button_pressed():
	get_tree().change_scene_to_file("res://settings.tscn")


# i havde delcared few varriable for label and buttons
@onready var label = $Label
@onready var button1 = $ResumeButton
@onready var button2  = $ExitButton
