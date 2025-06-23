extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


# this is a signal and will do its asigned task
signal start_game


# this makes score varraible to text string
func update_score(score):
	$Score.text = str(score)


#this will show content of label
func show_label(text):
	label.text = text
	label.show()
	

#this will show content of label
func show_score(update_score):
	$Score.text = update_score # this will enable game engine to update score(time).
	$Score.show() # this will show that updated score

# i have decclared few varriable
@onready var label = $Label
@onready var score = $Score
