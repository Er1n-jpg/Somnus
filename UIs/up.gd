extends MenuButton
@onready var MB = $MenuButton


# Called when the node enters the scene tree for the first time.
func _ready():
	var MB = get_node("MenuButton")
	MB.get_popup().id_pressed.connect(_on_menu_item_selected)
	
func _on_menu_item_selected(id):
	print ("Selected item ID:" , id)
	
	var popup = MB.get_popup()
	var itemindex = popup.get_item_index(id)
	var text = popup.get_item_text(id)
	
	print ()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
