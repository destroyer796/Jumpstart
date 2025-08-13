class_name HUD extends CanvasLayer

static var time = 0
static var added_time = "00:00:000"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	time += delta
	get_time(time)
	update_timer()

static func get_time(time):
	var minutes: int = int(time / 60)
	var seconds: int = int(fmod(time, 60.0))
	var mseconds: int = int(fmod(time * 1000, 1000.0))
	
	added_time = "%02d:%02d:%03d" % [minutes, seconds, mseconds]
	return(added_time)
	
func update_timer():
	$TimerLabel.text = added_time
	
	
static func reset_timer():
	time = 0
