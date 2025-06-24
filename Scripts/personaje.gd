extends CharacterBody2D
var movimiento = Vector2()
var velocidad = 3

func _physics_process(delta):
	Mover()

func Mover():
	Mover_derecha()
	Mover_izquierda()
	Mover_arriba()
	Mover_abajo()
	Parar()
	move_and_collide(movimiento)
	pass

func Mover_derecha():
	if Input.is_action_pressed("ui_right"):
		movimiento.x = velocidad
		$AnimationPlayer.play("Derecha")

func Mover_izquierda():
	if Input.is_action_pressed("ui_left"):
		movimiento.x = -velocidad
		$AnimationPlayer.play("Izquierda")

func Mover_arriba():
	if Input.is_action_pressed("ui_up"):
		movimiento.y = -velocidad
		$AnimationPlayer.play("Arriba")

func Mover_abajo():
	if Input.is_action_pressed("ui_down"):
		movimiento.y = velocidad
		$AnimationPlayer.play("Abajo")

func Parar():
	if (Input.is_action_just_released("ui_right") or
			Input.is_action_just_released("ui_left") or
			Input.is_action_just_released("ui_up") or
			Input.is_action_just_released("ui_down")):
		movimiento.x = 0
		movimiento.y = 0
		$AnimationPlayer.stop()
