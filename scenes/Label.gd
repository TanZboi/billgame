extends Label
var i = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	text = ""


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	i += 1
	
	if i == 500:
		text = "In the near future large companies start experimenting with AI replicas of objects."
	elif i == 1500:
		text = "Over time these replicas start to become more and more advanced. They go to towns, cities, planets.."
	elif i == 3000:
		text = "Eventually these simulations got to a point where living creatures can be replicated."
	elif i == 4500:
		text = "Thousands of planets of people were created, all made of instructions and data."
	elif i == 6000:
		text = "These planets contain ecosystems, society, happiness, pain, everything that the real world feels."
	elif i == 7500:
		text = "Millions of worlds are created by hundreds of companies, all being used to test medication, weapons, diseases.."
	elif i == 9000:
		text = "After use, most simulations are shut down."
	elif i == 10000:
		text = "Some are left running, forgotten about."
