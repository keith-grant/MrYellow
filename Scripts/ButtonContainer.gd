extends HBoxContainer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func init(config):
	
	var keys = config.keys()
	var button_instance = load("res://Scenes/Response.tscn")
	for key in keys:
		var button = button_instance.instance()
		button.init(config[key])
		add_child(button)
	
	pass