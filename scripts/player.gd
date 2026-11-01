extends CharacterBody2D

var speed = 150
var friction = 0.99
var jumpPower = 600
var jumpAvailable = false
var jump2 = false
var coyoteTime = 0.08
var coyoteTimer = 0
var gravity = 18
var crouched = false

func _physics_process(delta: float) -> void:
	velocity.x = (int(Input.is_action_pressed("right")) - int(Input.is_action_pressed("left"))) * -speed * friction * delta * 100
	velocity.y += gravity
	coyoteTimer -= delta
	if is_on_floor():
		coyoteTimer = coyoteTime
		jump2 = true
	if coyoteTimer > 0 and jump2 == true:
		jumpAvailable = true
	else:
		jumpAvailable = false
	if Input.is_action_just_pressed("jump"):
		if jumpAvailable == true:
			velocity.y = -jumpPower
			jump2 = false
			crouched = false
	if is_on_floor():
		if Input.is_action_just_pressed("crouch"):
			crouched = !crouched
	else :
		if Input.is_action_just_pressed("crouch"):
			crouched = false
	if crouched == true:
		scale.y = 0.75
		speed = 100
	else:
		scale.y = 1
		speed = 150
	move_and_slide()
