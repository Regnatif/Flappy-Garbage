extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	position.x = 1072
	position.y = rand_range(0,300)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= 170 * delta
	if position.x <= -100:
		print("sa")
		queue_free()
	pass
