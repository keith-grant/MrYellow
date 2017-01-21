extends Button

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var response_text = ""
var result_text = ""
var result_audio = ""
var response_outcome = ""
var prop = ""
var prop_x = ""
var prop_y = ""
var event_code = ""

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	
	
	pass


func init(config):
	response_text = config["ResponseText"]
	result_text = config["ResultText"]
	result_audio = config["ResultAudio"]
	response_outcome = config["MoodChange"]
	prop = config["Prop"]
	prop = config["Prop"]
	prop_x = config["PropX"]
	prop_y = config["PropY"]
	event_code = config["EventCode"]
	
	set_text(response_text)
	pass

func _on_Response_mouse_enter():
	print("Over " + response_text)
	pass # replace with function body


func _on_Response_pressed():
	var mr_yellow = get_node("./../../MrYellow")
	mr_yellow.set_mood(response_outcome)
	var game_node = get_node("./../..")
	
	
	game_node.ask_question()
	
	pass # replace with function body
