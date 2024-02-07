extends CanvasLayer

@onready var textbox_container = $TextboxContainer
@onready var start_symbol = $TextboxContainer/MarginContainer/HBoxContainer/Start
@onready var end_symbol = $TextboxContainer/MarginContainer/HBoxContainer/End
@onready var label = $TextboxContainer/MarginContainer/HBoxContainer/Label

@onready var tween = get_tree().create_tween()

enum state{
	READY,
	READING,
	FINISHED
}

var current_state = state.READY
var text_queue = []

const CHAR_READ_RATE = 0.0015

func _ready():
	
	hide_textbox()
	tween.finished.connect(finishedscrollingtext)
	
func _process(_delta):
	match current_state:
		state.READY:
			if !text_queue.is_empty():
				display_text()
		state.READING:
			if Input.is_action_just_pressed("z"):
				label.visible_ratio = 1
				tween.stop()
				end_symbol.text = "v"
				change_state(state.FINISHED)
		state.FINISHED:
			if Input.is_action_just_pressed("z"):
				change_state(state.READY)
				hide_textbox()
				
				

func queue_text(next_text):
	text_queue.push_back(next_text)

func hide_textbox():
	start_symbol.text = ""
	end_symbol.text = ""
	label.text = ""
	textbox_container.hide()
	
func show_textbox():
	start_symbol.text = "*"
	textbox_container.show()
	
func display_text():
	var next_text = text_queue.pop_front()
	label.text = next_text
	label.visible_ratio = 0
	change_state(state.READING)
	show_textbox()
	label.visible_ratio = 0
	tween.tween_property(label, "visible_ratio", 1, len(next_text) * CHAR_READ_RATE)
	tween.play()
	
func finishedscrollingtext():
	tween.stop()
	end_symbol.text = "v"
	change_state(state.FINISHED)
	
func change_state(next_state):
	current_state = next_state
	match current_state:
		state.READY:
			pass
		state.READING:
			pass
		state.FINISHED:
			pass
