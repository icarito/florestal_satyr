
extends ParallaxLayer

func _ready():
	# Initialization here
	set_process(true)
	
func _process(delta):
	var curPos = get_pos()
	
	if curPos.x < -1360:
		curPos.x = 0
	if curPos.x > 0:
		curPos.x = -1360
	
	curPos.x = curPos.x - 30 * delta
	set_pos(curPos)