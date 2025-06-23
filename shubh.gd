extends CharacterBody2D

class_name player1

@export var speed = 1000
@export var rotation_speed = 0.70
@export var friction = 50
@export var linear_velocity = 0
@export var rotation_speed1 = 0.70

var rotation_direction1 = 0
var rotation_direction = 0

func get_input():
	
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed 
	rotation_direction = Input.get_axis("left", "right")
	velocity = transform.y * Input.get_axis("down", "up") * -speed 
	if Input.is_action_just_pressed("up"):
		$sound.play()
	elif Input.is_action_just_released("up"):
		$sound.stop()

func _physics_process(delta):
	get_input()
	rotation += rotation_direction * rotation_speed * delta
	move_and_slide()
	
func get_input1():
	
	var input_direction1 = Input.get_vector("la", "ra", "ua", "da")
	velocity = input_direction1 * speed 
	rotation_direction1 = Input.get_axis("la", "ra")
	velocity = transform.y * Input.get_axis("da", "ua") * -speed 
	

func _physics_process1(delta):
	get_input()
	rotation += rotation_direction1 * rotation_speed1 * delta
	move_and_slide()
	

	
func camera():
	var scalefactor = 1.5 + linear_velocity.length()/1000
	$Camera2D.zoom = lerp($Camera2D.zoom, Vector2(scalefactor, scalefactor), 0.01)



	

func _on_area_2d_body_entered(body):
	pass # Replace with function body.
	
