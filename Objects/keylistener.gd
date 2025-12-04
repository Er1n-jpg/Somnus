extends Sprite2D
@onready var falling_note = preload("res://Objects/falling_note.tscn")
@export var key_name: String = ""

var falling_key_queue = []
func _process(delta):
	if Input.is_action_just_pressed(key_name):
		Createfallingkey()

func Createfallingkey():
	var fn_inst = falling_note.instantiate()
	get_tree().get_root().call_deferred("add_child",fn_inst)
	fn_inst.Setup(position.x, frame + 4)
	
	falling_key_queue.push_back(fn_inst)
