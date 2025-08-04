extends Node



func finish():
	var player = get_node("/root/Main/Player")
	EventController.emit_signal("level_completed")
	player.reset_position()	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
