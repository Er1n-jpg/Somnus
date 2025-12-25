extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_newgame_pressed() -> void:
	print("new pressed")
	var newgamescene = preload("res://Levels/gamescene_1.tscn")
	get_tree().change_scene_to_packed(newgamescene)
	
func _on_settings_pressed() -> void:
	print("settings pressed")
	var settingspage = preload("res://node_2d.tscn")
	get_tree().change_scene_to_packed(settingspage)
	

func _on_quit_game_pressed() -> void:
	print("quit pressed")
	get_tree().quit()


func _on_load_pressed() -> void:
	print("load pressed")
	var loadpagetemp = preload("res://Objects/Dialogues.tscn")
	get_tree().change_scene_to_packed(loadpagetemp)
