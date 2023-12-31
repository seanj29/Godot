extends Sprite


var speed = 400
var angular_speed = PI
var timestep = 0

onready var timer = get_node("Timer")


func _ready():
	
	timer.connect("timeout", self, "_on_Timer_timeout")

func _process(delta):
	rotation += angular_speed * delta
	var velocity = Vector2.UP.rotated(rotation) * speed
	position += velocity * delta



func _on_Button_pressed():
	set_process(not is_processing())

func _on_Timer_timeout():
	visible = not visible
