extends Button

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var response_text = ""
var result_text = ""
var result_audio = 22

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func init(config):
	response_text = config["ResponseText"]
	result_text = config["ResultText"]
	result_audio = config["ResultAudio"]
	set_text(response_text)
	pass