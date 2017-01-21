extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var mood = 50

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	var mood = 50
	
	set_fixed_process(true)
	pass
	
func _fixed_process(delta):
	
	mood -= delta
	
	pass
	
func get_mood():
	return mood
	pass
