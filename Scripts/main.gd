extends Node2D

func _ready():
	if Global.rejugar:
			_on_menu_jugar()
	else:
		get_tree().paused = true
	pass

func _on_bandera_gana() -> void:
	$Enemigo.queue_free()
	$Bandera.queue_free()
	$menu.visible = true
	$menu/jugar.visible = false
	$menu/jugar.disabled = false
	$menu/rejugar.visible = true
	$menu/rejugar.disabled = false 
	$menu/nombrejuego.visible = false
	$menu/Ganaste.visible = true
	Global.rejugar = true
	get_tree().paused = true
	pass

func _on_bandera_pierde() -> void:
	$Personaje.queue_free()
	$menu.visible = true
	$menu/jugar.visible = false
	$menu/jugar.disabled = true
	$menu/rejugar.visible = true
	$menu/rejugar.disabled = false 
	$menu/nombrejuego.visible = false
	$menu/Perdiste.visible = true
	Global.rejugar = true
	get_tree().paused = true
	pass

func _on_menu_jugar() -> void:
	get_tree().paused = false
	$menu.visible = false
	pass 

func _on_menu_salir() -> void:
	get_tree().quit()
	pass 

func _on_menu_rejugar() -> void:
	get_tree().reload_current_scene()
	pass 
