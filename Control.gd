extends Control


# i have delcared a scene to a varriable
@onready var scene : String = "res://main_menu.tscn"

@onready var Progress_bar:ProgressBar = $ProgressBar


# made few varriables which i though would be usefull in our code
var progress = []
var scene_load_status = 0 


# i have given varriable name to sound
@onready var sound = $AudioStreamPlayer


# this function will wait for 2 second and then it will request for loading the scene
func _ready():
	await get_tree().create_timer(2).timeout # it set wait time of 2 seconds
	ResourceLoader.load_threaded_request(scene) # after that wait time is over it loads resoure loaders


# this will make sure text in label is presented when this scene loads
func show_message(message):
	label.text = message  # this will set content of label as text
	label.show()   # this will make sure content is shown at assigned place in label


# this will make sure text in label2 is presented when this scene loads
func show_text(text):
	label2.text = text  # this will set content of label as text
	label2.show()  # this will make sure content is shown at assigned place in label


# i have declared few label and button
@onready var label = $Label
@onready var label2 = $Label2
@onready var progesbar = $ProgressBar


# this will play background music when this loading screen loads
func _sound():
	sound.play()

# this will show the progress bar at assgined postion in screen.
func progesbar_show():
	progesbar.show()


# this code will make sure percentage in the progrees bar is displayed systematically
func _process(delta):
	await get_tree().create_timer(3).timeout # it set wait time of 3 seconds
	Engine.time_scale = 1 # i have specided the scale of progress bar to go up to 1 (i.e 100)
	scene_load_status = ResourceLoader.load_threaded_get_status(scene,progress) # this function shows the progreess 
																# of resources and files on progress bar
	Progress_bar.value = progress[0] * 35
	await get_tree().create_timer(1).timeout # it set wait time of 1 seconds
	Progress_bar.value = progress[0] * 75
	await get_tree().create_timer(1).timeout# it set wait time of 2 seconds
	Progress_bar.value = progress[0] * 100
	await get_tree().create_timer(2).timeout # it set wait time of 2 seconds
	get_tree().change_scene_to_file("res://main_menu.tscn") # after await of 2 seconds it loads or changes current scene to main menu.
	
