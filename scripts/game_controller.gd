extends Node

var time = 0

func finish():
	var player = get_node("/root/Main/Player")
	player.reset_position()
	get_tree().change_scene_to_file("res://finish_screen.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
