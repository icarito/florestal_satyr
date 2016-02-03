
extends Sprite

# member variables here, example:
# var a=2
# var b="textvar"

var status = "idle"

func impulse(delta):
	# move
	var pos = self.get_pos()
	var newx = pos.x + delta
	var pos = Vector2(newx, pos.y)
	#self.set_pos( pos )
	
	var player = get_node("AnimationPlayer")
	player.play("Walk")

func _ready():
	# Initialization here
	#set_process(true)
	set_process_input(true)

func _process(delta):
	if self.status == "idle":
		self.set_frame(0)

func _input(event):
	if (event.is_pressed() and !event.is_echo()):
		if (event.is_action("ui_left")):
			impulse(-50)
		if (event.is_action("ui_right")):
			impulse(50)