extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization her
	var mood = 50
	var node = get_node("ProgressBar")
	node.set_val(mood)
	
	var button_container = load("res://Scenes/ButtonContainer.tscn")
	var example_button_1 = {
		"ResponseText" : "Option 1",
		"ResultText" : "You picked option 1",
		"ResultAudio" : "File 1"
	}
	
	var example_button_2 = {
		"ResponseText" : "Option 2",
		"ResultText" : "You picked option 2",
		"ResultAudio" : "File 2"
	}
	
	var example_config = {
		"button_1" : example_button_1,
		"button_2" : example_button_2
	}
	
	var button_container_1 = button_container.instance()
	button_container_1.init(example_config)
	add_child(button_container_1)
	
	set_fixed_process(true)
	pass


func _fixed_process(delta):
	
	var mood = get_node("MrYellow").get_mood()
	
	var node = get_node("ProgressBar")
	node.set_val(mood)

