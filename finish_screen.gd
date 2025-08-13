extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Time.text = str(HUD.get_time(HUD.time))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	


func _on_restart_pressed() -> void:
	HUD.reset_timer()
	get_tree().change_scene_to_file("res://main.tscn")

func _on_quit_pressed() -> void:
	get_tree().quit()
