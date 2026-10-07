extends Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _input(event: InputEvent) -> void:
	var return_to_main_menu = event.is_action_pressed("return_to_main_menu")
	if return_to_main_menu:
		print("return_to_main_menu pressed")
		get_tree().change_scene_to_file("res://main_menu.tscn")
