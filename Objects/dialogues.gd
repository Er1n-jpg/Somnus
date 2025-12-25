extends CanvasLayer

@onready var panel = $Panel
@onready var name_label = $Panel/Namelabel
@onready var dialogue_label = $Panel/Dialoguelabel
@onready var continue_indicator = $Panel/ContinueIndicator

var dialogue_lines := []
var current_line := 0
var text_speed:= 0.05
var istyping := false




func _ready() -> void:
	hide()

func start_dialogue(lines: Array):
	dialogue_lines = lines
	current_line = 0
	show()
	display_line()
	
func display_line():
	if current_line >= dialogue_lines.size():
		end_dialogue()
		return

	var line = dialogue_lines[current_line]
	name_label.text = line.get("name","")
	dialogue_label.text = ""
	continue_indicator.hide()
	istyping = true
	
	for character in line.text:
		dialogue_label.text += character
		await get_tree().create_timer(text_speed).timeout
		
		istyping = false
		continue_indicator.show()

func _input(event):
	if not visible:
		return
	
	if event.is_action_pressed("interact"):
		if istyping:
			dialogue_label.text = dialogue_lines[current_line].text
			istyping = false
			continue_indicator.show()
		else:
			current_line =+ 1
			display_line()

func end_dialogue():
	hide()
	dialogue_lines = []
	current_line = 0
	
	
			
