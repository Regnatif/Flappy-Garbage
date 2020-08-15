extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocity = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	position.y = 0
	pass 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity.y += gravity * delta
	position.y += velocity.y * delta
	rotation -= delta * -0.6 
	
	if position.y <= 0:
		velocity.y = 0
		position.y = 0
	if position.y >= 580:
		position.y = 580
	
	if position.y >= 580:
		get_tree().change_scene("res://Scenes/MenuScene.tscn")
		Vars.score = 0
	
	if(Input.is_action_just_pressed("jump")):
		rotation = -0.5
		velocity.y -= 500 
	pass


func _on_Bird_area_entered(area):
	if area.is_in_group("tube"):
		get_tree().change_scene("res://Scenes/MenuScene.tscn")
		queue_free()
	
	
	if area.is_in_group("ScoreDetection"):
		Vars.score +=1
		pass
	pass 
