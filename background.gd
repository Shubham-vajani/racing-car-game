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
	$ScoreTimer.stop() # when game is over this will stop the timer from claculating further
	$CanvasLayer.show_game_over() # this will show game over screen as soon as game ends


# this is a signal which has some task to be completed when it's called
func new_game():
	time = 0 # this make sures that time start from 0 in every new game
	personalbest = personalbest # loads old personal best and sets it to personal best varriable
	$CanvasLayer.update_score(time) # this enables game to update time
	$ScoreTimer.start() # this signal starts calculating time


# this is  signal which increases time by 1 at each second and also updates it in it Ui
func _on_score_timer_timeout():
	time += 1 # calculates seconds 
	$CanvasLayer.update_score(time) # # this enables game to update time


# this function keeps track of personal best score and also update's it's in it's Ui
func save_personalBest():
	if time < personalbest: #  compares time with personal best
		personalbest = time # if time took is less then personalbest then will update personal best to time
		gameover.get_node("Panel/personalBest").text = "Personal Best : " + str(personalbest) # this enables game to update personal best
		save_bestscore() # it saves the personal best score
	gameover.get_node("Panel/score").text = "Time : " + str(time) # # this enables game to update time

	
	if personalbest < time : # and checks if personal best  is less than time
		personalbest = personalbest # then dosen't change personal best
		gameover.get_node("Panel/personalBest").text = "Personal Best : " + str(personalbest) # this enables game to update personal best
	
	
# i have assignes some task which will be done when game finish is been called
func gamefinish():
	save_personalBest() # when this game finsih function is called it saved the personal best so that it's not loss
	get_tree().paused = true # and when game is finsihed it pauses the game


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
	save_personalBest() # before chaginng scene it saves the personal best 
	get_tree().change_scene_to_file("res://main_menu.tscn") # changes current scene to main menu
	get_tree().paused = false # and then un pauses the game


# this function will reload the cureent scene 
func reload():
	get_tree().paused = false # it un[auses the game and then reloads current scene
	save_personalBest() # it saves the personal best score made by player
	get_tree().reload_current_scene() # then it reloads  the game
	new_game() # then it calls the new game funnction made above which resets everyting like position of player, time etc
	Load_score() # then it called load score function 


# i have declared some scene(ui) to a new varriable
@onready var loose = $CanvasLayer4/Control
@onready var win = $CanvasLayer3/gameOverScreen


# this will work when either player or Ai will enter in the area assigned
func _on_area_2d_area_entered(area):
	if area.get_parent() is shubham1: # checks if boddy entered in finsih line is of player or not
		win.visible = true # if so then will show ame over screen of winning
		get_tree().paused = true # then it pauses  the game so the oppponet can't move
		gamefinish() # then it calls game finish functio made above which saves the personal best and other things
	
	if area.get_parent() is opponent: # checks if boddy entered in finsih line is of opponent(Ai) car or not
		loose.visible = true # if so then will show ame over screen of lossing to player because Ai won the race
		get_tree().paused = true# then it pauses  the game so the oppponet can't move
		gamefinish() # then it calls game finish functio made above which saves the personal best and other things


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


# i have declared a file name which will store personal best score of player
const SaveFile = "user://Players_score.save"


# this function save personal best score in the file
func save_bestscore():
	var file = FileAccess.open(SaveFile, FileAccess.WRITE_READ) # gains acces to file, and opens it and then uses write and read
																#finction of godgot which allows to write and read from file made
	file.store_32(personalbest)# then it store or wrie persoal best score in the file


# this fucntion load the personal best sscore from that file when game starts 
func Load_score():
	var file = FileAccess.open(SaveFile, FileAccess.READ) # it opens the file and reads the personal best score made and then it uses
													# that to compare with time to check wehter new personal best score is set up or not
	if FileAccess.file_exists(SaveFile): # it checks if it right file or not
		personalbest = file.get_32() # if it then it store personal best there
	else :
		personalbest = time


# thhis will ensure players get penality of 3 second when they touch stone
func _on_area_2d_2_area_entered(area):
	if area.get_parent() is shubham1: # checks if player's car has dashed with stone or not
		time = time + 3 # if so then time will increase by 3  second

func _on_area_2d_3_area_entered(area):
	if area.get_parent() is shubham1: # checks if player's car has dashed with stone or not
		time = time + 3 # if so then time will increase by 3  second

func _on_area_2d_4_area_entered(area):
	if area.get_parent() is shubham1: # checks if player's car has dashed with stone or not
		time = time + 3 # if so then time will increase by 3  second


# thhis will ensure players get penality of 5 second when they touch truck
func _on_area_2d_truck_area_entered(area):
	if area.get_parent() is shubham1: # checks if player's car has dashed with truck or not
		time = time + 5 # if so then time will increase by 5 second

func _on_area_2d_truck_2_area_entered(area): # checks if player's car has dashed with truck or not
	if area.get_parent() is shubham1:
		time = time + 5# if so then time will increase by 5 second

func _on_area_2d_truck_3_area_entered(area): # checks if player's car has dashed with truck or not
	if area.get_parent() is shubham1:
		time = time + 5# if so then time will increase by 5 second
