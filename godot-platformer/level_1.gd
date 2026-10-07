extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Level 1 ready")



func _on_door_body_entered(body: Node2D) -> void:
	if body == $Player:
		get_tree().change_scene_to_file("res://level_2.tscn")
