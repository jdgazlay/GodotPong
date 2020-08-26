extends Control


func _ready() -> void:
	$CenterContainer/VBoxContainer/HBoxContainer/Winner.text = Scores.winner

func _on_Button_pressed() -> void:
	Scores.reset()
	get_tree().change_scene("res://Main.tscn")
