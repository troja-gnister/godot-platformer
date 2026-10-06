extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Level 1 ready")

func _input(event: InputEvent) -> void:
	var return_to_main_menu = event.is_action_pressed("return_to_main_menu")
	if return_to_main_menu:
		print("return_to_main_menu pressed")
		get_tree().change_scene_to_file("res://main_menu.tscn")


func _on_door_body_entered(body: Node2D) -> void:
	if body == $Player:
		get_tree().change_scene_to_file("res://level_2.tscn")
