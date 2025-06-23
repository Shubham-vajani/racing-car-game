extends CharacterBody2D

# this is the name of the  class
class_name partplay2player2


# i have delcared some varriables which  i will use later in code
@export var speed = 200
@export var rotation_speed = 0.30
@export var friction = 50
@export var linear_velocity = 0

var rotation_direction = 0

# this will take inputs fo user and will perform accodringly
func get_input(): # this function will handel all the inputs bu 2nd player
	
	var input_direction = Input.get_vector("left", "right", "up", "down") # this are 4 inputs which game engine has to take for 2nd player
	velocity = input_direction * speed # it make  sures that speed is contant 
	rotation_direction = Input.get_axis("left", "right") # assgins roattion to left and right moment
	velocity = transform.x * Input.get_axis("down", "up") * speed # allowss car to move forward and backward in x axis
	
	
# this is hpw roatation works when player goes either left or right
func _physics_process(delta): # it uses physics function made by game engine
	get_input() # get inputs which has rotation associated with it. (i.e. left and right)
	rotation += rotation_direction * rotation_speed * delta # make sures that speed is contant while rotating
	move_and_slide()
	

# i have declaread car image
@onready var car = $"Top-car-view-png-34861"


# this will show car image
func _car():
	car.show()
	


func _on_area_2d_body_entered(body):
	pass # Replace with function body.
