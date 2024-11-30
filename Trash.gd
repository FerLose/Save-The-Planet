extends Area2D

# Variables miembro
var points = 0

# Llamado cuando el nodo entra en el árbol de la escena por primera vez.
func _ready():
	# Conectar la señal "body_entered" a la función "_on_Trash_body_entered"
	connect("body_entered", self, "_on_Trash_body_entered")

# Función para manejar cuando el cuerpo entra en el área.
func _on_Trash_body_entered(body):
	if body.get_name() == "Player":
		# Incrementar los puntos
		points += 1
		
		# Actualizar el contador de vida y puntos si es necesario
		# get_node("../LifeCounter").text = str("Lives: ", get_node("../Hero").life, " Points: ", points)
		
		# Eliminar el ítem Trash de la escena
		hide()
		queue_free()


