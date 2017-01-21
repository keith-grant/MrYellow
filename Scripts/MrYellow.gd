extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	var mood = 50
	var node = get_node("ProgressBar")
	node.set_val(mood)
	pass
