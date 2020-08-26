extends Control

export var next_scene: PackedScene


func _on_Button_pressed() -> void:
	var player_one_name = $VBoxContainer/HBoxContainer/Player1Input.text
	var player_two_name = $VBoxContainer/HBoxContainer2/Player2Input.text
	Scores.configure_name("player_one", player_one_name if player_one_name else "Player 1")
	Scores.configure_name("player_two", player_two_name if player_two_name else "Player 2")
	get_tree().change_scene_to(next_scene)
