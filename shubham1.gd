extends CharacterBody2D

# this is the name of the class 
class_name shubham1

# i have declared some varriables which i will use for my coding
@export var speed = 1000
@export var rotation_speed = 0.70
@export var friction = 50
@export var linear_velocity = 0
@export var rotation_speed1 = 0.70
@export var rotation_direction = 0


# i have assigned varriable name to Sound
@onready var sound = $sound


# this is camera which will focus on car and will make player feel like track is genrating as he moves forward
func camera():
	var scalefactor = 1.5 + linear_velocity.length()/1000
	$Camera2D.zoom = lerp($Camera2D.zoom, Vector2(scalefactor, scalefactor), 0.01) # this will make camera to zoom on player 


# this function will take all the inputs and will perform accordignly
func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down") # it takes all the inputs
	velocity = input_direction * speed # it make sures car moves with same speed in all direction
	rotation_direction = Input.get_axis("left", "right") # car will rotate a bit if input is left or right this will make
											# it relastic because in real life front tyres of car rotates while turing left or right
	velocity = transform.y * Input.get_axis("down", "up") * -speed # this will move car in y axis i.e will allow it to move forward and backward
	
	
	# this will play assigned sound effect when player presses W(up)
	if Input.is_action_just_pressed("up"): # this will take input W
		sound.play() # and will play sound effect
	elif Input.is_action_just_released("up"): # will keep track if W is relased
		sound.stop() # and will stop playing sound effect


# this is hpw roatation works when player goes either left or right
func _physics_process(delta):
	get_input() # uses physics of game and get input
	rotation += rotation_direction * rotation_speed * delta # it sets roation when player mves left and right
	move_and_slide() # it uses function make by engine to make sure it rotates properly


# i have declared photo of car 
@onready var car = $"Top-car-view-png-34861"


#this will show photo car
func show_image():
	car.show()
	

func _on_area_2d_body_entered(body):
	pass # Replace with function body.
	
