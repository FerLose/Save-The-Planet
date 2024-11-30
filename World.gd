extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	# Inicializar contador de Area2D
	var area2d_count = 0
	
	# Iterar sobre los hijos del nodo 'world'
	for node in get_children():
		if node is Area2D:
			area2d_count += 1
			
	
	
	
	# Imprimir la cantidad de nodos Area2D

	if area2d_count == 0:
		get_tree().change_scene("res://WellDone.tscn")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
