extends Control



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_controls_pressed() -> void:
	var controlspanel = preload("res://UIs/controls.tscn")
	get_tree().change_scene_to_packed(controlspanel)


func _on_callibration_pressed() -> void:
	pass # Replace with function body.


func _on_h_slider_2_drag_ended(value_changed: bool) -> void:
	var vc = value_changed
	if (vc):
		get_tree()



func _on_h_slider_3_drag_ended(value_changed: bool) -> void:
	pass # Replace with function body.
