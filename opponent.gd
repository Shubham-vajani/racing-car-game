extends CharacterBody2D


# this is the name of the class 
class_name opponent

# I have declared _follow variable  which will follow asgined path
@onready var _follow :PathFollow2D = get_parent()

# I have declared speed varriable and it's a floating varriable
var speed :float 


# At speed of 900 Ai (opponent) car will follow the asgined path
func _physics_process(delta):
	speed = 900.0
	_follow.progress += speed * delta # follow preoress will use the varriable follow
										# made on top and will follow parent path which i have made for ai car


# this end vrriable will keep the track of when Ai car has reached finsih line
@onready var end


# this end function will prevent looping of car and now car will stop at x = 1715
func stop():
	if opponent.position.x == 1715.5 : # this 1715 is postion of end point and when Ai car reaches there
		_follow.progress = stop() # it will stop the progree i.e will not move
		end # and then i have used the end varriable which i have made to keep track of Ai car to reach end point
	else:
		pass # if ai is not at end line it will just pass means it will kepp running


# i have declaared the photo of car
@onready var car =  $"Top-car-view-png-34864"


# this will show the photo of car
func show_car():
	car.show()
