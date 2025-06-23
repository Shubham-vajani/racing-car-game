extends CharacterBody2D


# this is the name of class
class_name part2play1

# i have declatred some of the varriable which i will use in my code
@export var speed = 200
@export var rotation_speed = 0.30
@export var friction = 50
@export var linear_velocity = 0

var rotation_direction = 0


# this will take inputs fo user and will perform accodringly
func get_input():
	
	var input_direction = Input.get_vector("la", "ra", "ua", "da")# woll take input from player like left arrow, right arrow etc
	velocity = input_direction * speed # will make sure spped is maintained when car moves in any direction
	rotation_direction = Input.get_axis("la", "ra") # when presses left or right arrow car will roate a bit rather then sliding because
											# if car slides game won't look realstic 
	velocity = transform.x * Input.get_axis("da", "ua") * speed # will move car forward and backward on x axis if presses left or right arrow
	

# this is hpw roatation works when player goes either left or right
func _physics_process(delta): # this is function which calls physcis of the game
	get_input() # it get inputs which has roation connected with it
	rotation += rotation_direction * rotation_speed * delta # it make sure roation happees at specific speed
	move_and_slide()
	

# i have declared photo of car
@onready var car = $"White-mercedes-benz-top-car-png-4"

# this will show photo of car
func show_car():
	car.show()



func _on_area_2d_body_entered(body):
	pass # Replace with function body.
