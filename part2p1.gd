extends CharacterBody2D

class_name part2play1

@export var speed = 100
@export var rotation_speed = 0.30
@export var friction = 50
@export var linear_velocity = 0



var rotation_direction = 0

func get_input():
	
	var input_direction = Input.get_vector("la", "ra", "ua", "da")
	velocity = input_direction * speed 
	rotation_direction = Input.get_axis("la", "ra")
	velocity = transform.x * Input.get_axis("da", "ua") * speed 
	
func _physics_process(delta):
	get_input()
	rotation += rotation_direction * rotation_speed * delta
	move_and_slide()
	




	


func _on_area_2d_body_entered(body):
	pass # Replace with function body.
