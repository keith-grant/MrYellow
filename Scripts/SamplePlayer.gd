extends SamplePlayer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var started = false
func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_fixed_process(true)
	pass

func _fixed_process(delta):
	if(is_active()):
	
		pass
	elif (started):
		var game_node = get_node("./..")
		game_node.do_props()
		started = false
	
	pass