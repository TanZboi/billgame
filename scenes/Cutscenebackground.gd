extends Sprite2D

var i = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	modulate.a = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	i += 1
	modulate.a += 0.00006510416 
	
