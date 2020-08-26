extends Node2D


onready var player_one_score_label := get_node("Control/Container/VBoxContainer/Player1Score") as Label
onready var player_two_score_label := get_node("Control/Container/VBoxContainer2/Player2Score") as Label
export(PackedScene) var win_scene: PackedScene

func _ready() -> void:
	print(Scores.scores)
	$Control/Container/VBoxContainer/Player1Header.text = Scores.scores["player_one"].user_name
	$Control/Container/VBoxContainer2/Player2Header.text = Scores.scores["player_two"].user_name
	player_one_score_label.text = str(Scores.scores["player_one"].score)
	player_two_score_label.text = str(Scores.scores["player_two"].score)


func _on_Player1Goal_area_entered(area: Area2D) -> void:
	var current_score: int = Scores.increment_score("player_one", 1)
	player_one_score_label.text = str(current_score)
	
	if current_score >= 3:
		Scores.winner = Scores.scores["player_one"].user_name
		get_tree().change_scene_to(win_scene)
		return
	
	get_tree().reload_current_scene()


func _on_Player2Goal_area_entered(area: Area2D) -> void:
	var current_score: int = Scores.increment_score("player_two", 1)
	player_two_score_label.text = str(current_score)
	
	if current_score >= 3:
		Scores.winner = Scores.scores["player_two"].user_name
		get_tree().change_scene_to(win_scene)
		return
	get_tree().reload_current_scene()
