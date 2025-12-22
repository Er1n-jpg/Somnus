extends MenuButton

@onready var MB = $MenuButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	MB.getpopup().id_pressed.connect()
	
func _on_menu_item_selected(id):
	print ("Selected item ID:" +  id)
	
	var popup = MB.get_popup()
	var itemindex = popup.get_item_index(id)
	var text = popup.get_item_text(id)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
