extends Sprite2D

@export var fall_speed: float = 2.5

var init_y_pos: float = -360

func _init():
	set_process(false)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	global_position += Vector2(0, fall_speed)

	if position.y > 200.0 and $Timer.is_stopped():
		print($Timer.wait_time - $Timer.time_left)
		$Timer.stop()

func Setup(target_x: float):
	global_position = Vector2(target_x, init_y_pos)
	set_process(true)
