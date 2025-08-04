extends CanvasLayer

var time = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	time += delta


func update_score(score):
	var minutes: int = int(time / 60)
	var seconds: int = int(fmod(time, 60.0))
	var mseconds: int = int(fmod(time * 1000, 1000.0))
	
	$TimerLabel.text = "%02d:%02d:%03d" % [minutes, seconds, mseconds]
