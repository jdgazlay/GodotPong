extends Node

var scores := {
	"player_one": {
		"user_name": "",
		"score": 0,
	},
	"player_two": {
		"user_name": "",
		"score": 0,
	},
}
var winner : String


func increment_score(player: String, amount: int) -> int:
	scores[player].score += amount
	return scores[player].score


func reset() -> void:
	for i in scores:
		scores[i].score = 0
	winner = ""
	

func configure_name(player: String, user_name: String) -> void:
	scores[player].user_name = user_name
