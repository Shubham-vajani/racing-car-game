extends StaticBody2D


# I have declared some varriable which i will use further in my code
var personalbest = 50
var time = 0


# i  have declared a scence to a new varriable
@onready var gameover =$CanvasLayer3/gameOverScreen
@onready var timeUI = $CanvasLayer
@onready var scoretimmer = $ScoreTimer


# this wil keep track of new game
func _ready():
	new_game()
	

# i havde declared map
@onready var map = $"Screenshot2023-09-17083427"

# this will show the map
func sho_map():
	map.show()

# this function has task to be performed when game over is been called
func game_over():
	$ScoreTimer.stop()
	$CanvasLayer.show_game_over()


# this is a signal which has some task to be completed when it's called
func new_game():
	time = 0
	personalbest = personalbest
	$CanvasLayer.update_score(time)
	$ScoreTimer.start()


# this is  signal which increases time by 1 at each second and also updates it in it Ui
func _on_score_timer_timeout():
	time += 1
	$CanvasLayer.update_score(time)


# this function keeps track of personal best score and also update's it's in it's Ui
func save_personalBest():
	if time < personalbest:
		personalbest = time
		gameover.get_node("Panel/personalBest").text = "Personal Best : " + str(personalbest)
		save_bestscore()
	gameover.get_node("Panel/score").text = "Time : " + str(time)
	
	if personalbest < time :
		personalbest = personalbest
		gameover.get_node("Panel/personalBest").text = "Personal Best : " + str(personalbest)
	
	
# i have assignes some task which will be done when game finish is been called
func gamefinish():
	save_personalBest()
	get_tree().paused = true


# it quit the game when it's called
func quit():
	get_tree().paused = false
	get_tree().quit()


# it connects buttons of Ui to quit and main menu function so when this buttons will
# be pressed it will quit the game or will change current scene to main menu
func _connect():
	win.get_node("Button").pressed.connect(quit)
	win.get_node("Button3").pressed.connect(mainMenu)
	win.get_node("Button4").presssed.connect(reload)


# it connects buttons of a different Ui to quit and main menu function so when this buttons will
# be pressed it will quit the game or will change current scene to main menu
func _connect_1():
	loose.get_node("Button").pressed.connect(quit)
	loose.get_node("Button2").pressed.connect(mainMenu)
	loose.get_node("Button3").pressed.connect(reload)


# it changes current scene to main menu when it's called
func mainMenu():
	save_personalBest()
	get_tree().change_scene_to_file("res://main_menu.tscn")
	get_tree().paused = false


# this function will reload the cureent scene 
func reload():
	get_tree().paused = false
	save_personalBest()
	get_tree().reload_current_scene()
	new_game()
	Load_score()


# i have declared some scene(ui) to a new varriable
@onready var loose = $CanvasLayer4/Control
@onready var win = $CanvasLayer3/gameOverScreen


# this will work when either player or Ai will enter in the area assigned
func _on_area_2d_area_entered(area):
	if area.get_parent() is shubham1:
		win.visible = true
		get_tree().paused = true
		gamefinish()
	
	if area.get_parent() is opponent:
		loose.visible = true
		get_tree().paused = true
		gamefinish()


# i have declared stone obstacles 
@onready var stone1 = $Stone1
@onready var stone2 = $Stone2
@onready var stone3 = $Stone3


# i have declared truck obstacles 
@onready var truck1 = $Truck1
@onready var truck2 = $Truck2
@onready var truck3 = $Truck3

# i have declared start and end finish lines
@onready var startline = $"start line"
@onready var finishline = $finishline
 

# this will show atone obstacles on track when game starts
func present_stone():
	stone1.show()
	stone2.show()
	stone3.show()


# this will display truck obstacles on track when game starts
func display_truck():
	truck1.show()
	truck2.show()
	truck3.show()
	

# this will display start and finish line when game starts.
func disaply_line():
	startline.show()
	finishline.show()


# i have declared a file name 
const SaveFile = "user://savefile.save"


# this function save personal best score in the file
func save_bestscore():
	var file = FileAccess.open(SaveFile, FileAccess.WRITE_READ)
	file.store_32(personalbest)


# this fucntion load the personal best sscore from that file when game starts 
func Load_score():
	var file = FileAccess.open(SaveFile, FileAccess.READ)
	if FileAccess.file_exists(SaveFile):
		personalbest = file.get_32()
	else :
		personalbest = time


func _on_area_2d_2_area_entered(area):
	if area.get_parent() is shubham1:
		time = time + 2



func _on_area_2d_3_area_entered(area):
	if area.get_parent() is shubham1:
		time = time + 3


func _on_area_2d_2_area_entered1(area):
	pass # Replace with function body.
