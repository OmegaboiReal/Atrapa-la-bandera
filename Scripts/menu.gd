extends Node2D

signal jugar
signal salir
signal rejugar

func _on_jugar_pressed() -> void:
	emit_signal("jugar")
	pass

func _on_salir_pressed() -> void:
	emit_signal("salir")
	pass 

func _on_rejugar_pressed() -> void:
	emit_signal("rejugar")
	pass 
