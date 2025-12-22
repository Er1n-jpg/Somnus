extends Node2D

@onready var interaction_lable = $"Interaction lable"
var current_interactions := [] 
var can_interact = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("interact") and can_interact:
		if current_interactions:
			can_interact = false
			interaction_lable.hide()
			
			await current_interactions[0].interact.call()
			
			can_interact = true
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if current_interactions and can_interact:
		current_interactions.sort_custom(_sortabynearest)
		if current_interactions[0].is_interactable:
			interaction_lable.text = current_interactions [0].interact_name
			interaction_lable.show()
		else:
			interaction_lable.hide()
			

func _sortabynearest(area1,area2):
	var area1_dist = global_position.distance_to(area1.global_position)
	var area2_dist = global_position.distance_to(area2.global_position)
	return area1_dist < area2_dist 
func _on_interact_range_area_entered(area: Area2D) -> void:
	current_interactions.push_back(area)


func _on_interact_range_area_exited(area: Area2D) -> void:
	current_interactions.erase(area)
