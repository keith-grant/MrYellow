extends HBoxContainer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func init(question, responseDictionary):
	set_global_pos(Vector2(0,700))
	var button_instance = load("res://Scenes/Response.tscn")
	var response_keys = {
		"key_1" : question["ResponseID1"],
		"key_2" : question["ResponseID2"],
		"key_3" : question["ResponseID3"],
		"key_4" : question["ResponseID4"]
	
	}
	
	for key in response_keys :
		if(response_keys[key] != ""):
			var button = button_instance.instance()
			button.init(responseDictionary[response_keys[key]])
			add_child(button)