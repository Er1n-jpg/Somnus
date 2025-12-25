extends Sprite2D
@onready var falling_note = preload("res://Objects/falling_note.tscn")
@export var key_name: String = ""

var falling_key_queue = []
func _process(delta):
	if Input.is_action_just_pressed(key_name):
		pass
	
	if falling_key_queue.size() > 0:
		if falling_key_queue.front().has_passed:
			falling_key_queue.pop_front()
			print ("popped")

func Createfallingkey():
	var fn_inst = falling_note.instantiate()
	get_tree().get_root().call_deferred("add_child",fn_inst)
	fn_inst.Setup(position.x, frame + 4)
	
	falling_key_queue.push_back(fn_inst)


func _on_notespawntimer_timeout():
	Createfallingkey()
	$notespawntimer.wait_time = randf_range(0,4)
	$notespawntimer.start()
