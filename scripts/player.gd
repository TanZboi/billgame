extends CharacterBody2D

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

var speed = 500
var i = 0;


#every 20 frames update

func _physics_process(_delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * speed
	move_and_slide()
	
	if Input.is_action_just_pressed("move_down"):
		$Sprite2D.texture = load("res://sprites/lon_forward_step.png")
		i = 0
	if Input.is_action_just_pressed("move_up"):
		$Sprite2D.texture = load("res://sprites/lon_back_step.png")
		i = 0
	if Input.is_action_just_pressed("move_left"):
		$Sprite2D.texture = load("res://sprites/lon_left_step.png")
		i = 0
	if Input.is_action_just_pressed("move_right"):
		$Sprite2D.texture = load("res://sprites/lon_right_step.png")
		i = 0
		
	if Input.is_action_just_released("move_down"):
		$Sprite2D.texture = load("res://sprites/lon_forward_idle.png")
	if Input.is_action_just_released("move_up"):
		$Sprite2D.texture = load("res://sprites/lon_back_idle.png")
	if Input.is_action_just_released("move_left"):
		$Sprite2D.texture = load("res://sprites/lon_left_idle.png")
	if Input.is_action_just_released("move_right"):
		$Sprite2D.texture = load("res://sprites/lon_right_idle.png")
	
	if Input.is_action_pressed("move_left"):
		i += 1
		if i == 10:
			$Sprite2D.texture = load("res://sprites/lon_left_idle.png")
		if i == 20:
			$Sprite2D.texture = load("res://sprites/lon_left_step.png")
			i = 0;
	elif Input.is_action_pressed("move_right"):
		i += 1
		if i == 10:
			$Sprite2D.texture = load("res://sprites/lon_right_idle.png")
		if i == 20:
			$Sprite2D.texture = load("res://sprites/lon_right_step.png")
			i = 0;
	elif Input.is_action_pressed("move_up"):
		i += 1
		if i == 10:
			$Sprite2D.texture = load("res://sprites/lon_back_idle.png")
		if i == 20:
			$Sprite2D.texture = load("res://sprites/lon_back_step.png")
			i = 0;
	elif Input.is_action_pressed("move_down"):
		i += 1
		if i == 10:
			$Sprite2D.texture = load("res://sprites/lon_forward_idle.png")
		if i == 20:
			$Sprite2D.texture = load("res://sprites/lon_forward_step.png")
			i = 0;
