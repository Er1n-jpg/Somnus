extends CharacterBody2D


const SPEED = 300.0

@onready var animated_sprite = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var directionx:= Input.get_axis("left", "right")
	var xmovement = 0
	var ymovement = 0
	if directionx:
		velocity.x = directionx* SPEED
		animated_sprite.play("left and right")

	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		xmovement = 1
		
		
	var directiony:=Input.get_axis("Up", "down")
	if directiony:
		velocity.y = directiony * SPEED
		animated_sprite.play("left and right")
	else: 
		velocity.y = move_toward(velocity.y,0,SPEED)
		ymovement = 1
		
	if xmovement && ymovement == 1:
		animated_sprite.play("idle")
		
		
		
		

	move_and_slide()
