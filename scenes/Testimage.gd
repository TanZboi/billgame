extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var textbox = get_tree().current_scene.get_node("textbox")
	#textbox.queue_text("nutslicker")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
