extends Node2D

var menuposition = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("move_down"):
		if menuposition != 4:
			menuposition += 1
		else:
			menuposition = 1
	if Input.is_action_just_pressed("move_up"):
		if menuposition != 1:
			menuposition -= 1
		else:
			menuposition = 4
			
	if menuposition == 1:
		$New_Game.text = ">New Game"
		$New_Game.modulate.a = 1
	else:
		$New_Game.text = "New Game"
		$New_Game.modulate.a = 0.5
	
	if menuposition == 2:
		$Continue.text = ">Continue"
		$Continue.modulate.a = 1
	else:
		$Continue.text = "Continue"
		$Continue.modulate.a = 0.5
	
	if menuposition == 3:
		$Options.text = ">Options"
		$Options.modulate.a = 1
	else:
		$Options.text = "Options"
		$Options.modulate.a = 0.5
	
	if menuposition == 4:
		$Quit.text = ">Quit"
		$Quit.modulate.a = 1
	else:
		$Quit.text = "Quit"
		$Quit.modulate.a = 0.5
		
	if Input.is_action_just_pressed("z"):
		if menuposition == 1:
			get_tree().change_scene_to_file("res://scenes/testroom.tscn")
			pass
		if menuposition == 2:
			#continue
			pass
		if menuposition == 3:
			#options
			pass
		if menuposition == 4:
			get_tree().quit()
