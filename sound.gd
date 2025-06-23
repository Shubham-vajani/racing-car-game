extends Control

# i have assogned some sound bus to new varriables
@onready var SFX_bus_ID = AudioServer.get_bus_index("SFX")
@onready var Music_bus_ID = AudioServer.get_bus_index("Music")
@onready var Master_bus_ID = AudioServer.get_bus_index("Master")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


# this function will change current scene to option menu when it will be called
func _on_button_pressed():
	get_tree().change_scene_to_file("res://option_menu.tscn")


# thid will help player to change background sound volume throgh slider 
func _on_music_slider_value_changed(value):
	AudioServer.set_bus_volume_db(Music_bus_ID, linear_to_db(value)) #The linear_to_db function converts a linear volume value 
						#(e.g., 0.5 for 50% volume) to its corresponding decibel value, which is then used by set_bus_volume_db
						# to adjust the audio bus volume in decibels. 
	AudioServer.set_bus_mute(Music_bus_ID, value < 0.05) # will mute the  sound if player sets volume before 0.05


# thid will help player to change car sound volume throgh slider 
func _on_sfx_slider_value_changed(value):
	AudioServer.set_bus_volume_db(SFX_bus_ID, linear_to_db(value)) #The linear_to_db function converts a linear volume value 
						#(e.g., 0.5 for 50% volume) to its corresponding decibel value, which is then used by set_bus_volume_db
						# to adjust the audio bus volume in decibels. 
	AudioServer.set_bus_mute(SFX_bus_ID, value < 0.05)# will mute the  sound if player sets volume before 0.05


# this will show content of the label 
func show_name(name):
	label.text= name # will asigns name of varrable to text
	label.show() # will make sure text is shown at right place in screen


# this will show content of the label
func show_MusicLabel(music):
	music.text = music # will asigns name of varrable to text
	music.show() # will make sure text is shown at right place in screen


# this will show content of the label
func show_SFXLabel(sfx):
	SFX.text = sfx # will asigns name of varrable to text
	SFX.show() # will make sure text is shown at right place in screen


# this will show slider and will allow it to slide aswell 
func _sfxSlider():
	SFX_Slider.show() 


# this will show slider and will allow it to slide aswell 
func show_MusicSlider():
	Music_slider.show()

# this will show buttons
func _button():
	button.show()
	
	
# i have assigned varriable name to Sound
@onready var sound =$AudioStreamPlayer


# this function play background music while this ui is open
func PlayMusic():
	sound.play()


# i have declared few label and button
@onready var label = $Label
@onready var SFX = $SFXLabel
@onready var SFX_Slider =$SFXSlider
@onready var Music_slider = $MusicSlider
@onready var music = $MusicLabel
@onready var Master_slider = $HSlider
@onready var button = $Button
@onready var Muisc_explanation = $"Music explanation"
@onready var Master_explanation = $"Master explanation"
@onready var SFX_explanation = $"SFX explanation"


# player would be able to change the vloume of whole game (i.e sound effect of moments and background music)
func _on_h_slider_value_changed(value):
	AudioServer.set_bus_volume_db(Master_bus_ID, linear_to_db(value)) #The linear_to_db function converts a linear volume value 
						#(e.g., 0.5 for 50% volume) to its corresponding decibel value, which is then used by set_bus_volume_db
						# to adjust the audio bus volume in decibels. 
	AudioServer.set_bus_mute(Master_bus_ID, value < 0.05) # will mute the  sound if player sets volume before 0.05


# this will show slider and will allow it to slide aswell 
func _MasterSlider():
	Master_slider.show()

# this will show content of the label
func Music_explanation_Label(explanation):
	Muisc_explanation.text = explanation # will asigns name of varrable to text
	Muisc_explanation.show() # will make sure text is shown at right place in screen

# this will show content of the label
func Master_explanation_Label(information):
	Master_explanation.text = information # will asigns name of varrable to text
	Master_explanation.show() # will make sure text is shown at right place in screen

# this will show content of the label
func SFX_explanation_Label(message):
	SFX_explanation.text = message # will asigns name of varrable to text
	SFX_explanation.show() # will make sure text is shown at right place in screen
