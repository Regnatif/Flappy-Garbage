extends Node2D


var tube_scene = preload("res://Entities/Tube.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass 


func _process(delta):
	
	pass

func timer():
	add_child(tube_scene.instance())
	
	pass
