extends Spatial

onready var PlayerPosOne = $PositionPlayerOne
onready var PlayerPosTwo = $PositionPlayerTwo

func _ready():
	var playerOne = preload("res://Player.tscn").instance()
	playerOne.set_name(str(get_tree().get_network_unique_id()))
	playerOne.set_network_master(get_tree().get_network_unique_id())
	playerOne.global_transform = PlayerPosOne.global_transform
	add_child(playerOne)
	
	var playerTwo = preload("res://Player.tscn").instance()
	playerTwo.set_name(str(Singleton.user_id))
	playerTwo.set_network_master(Singleton.user_id)
	playerTwo.global_transform = PlayerPosTwo.global_transform
	add_child(playerTwo)
