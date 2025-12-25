extends Area2D

var is_interactable := true

var dialogue_data :=[
	{"name": "Person","text": "HIIIIIIII"}
]

func interact():
	var dialogue_box = get_node("root/node/objects/Dialogues")
