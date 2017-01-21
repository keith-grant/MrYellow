extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var questionDictionary = {}
var responseDictionary = {}

func loadContent(filepath, array):
	var file = File.new()
	file.open(filepath, file.READ)
	var content = file.get_as_text()
	file.close()
	array.parse_json(content)

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here

	loadContent("res://Docs/Questions.json", questionDictionary);
	loadContent("res://Docs/Responses.json", responseDictionary);

	#for item in config:
	#	print(config[item])
	#	pass

	var mood = 50
	var node = get_node("ProgressBar")
	node.set_val(mood)

	var button_container = load("res://Scenes/ButtonContainer.tscn")
	#var example_button_1 = {
	#	"ResponseText" : "Option 1",
	#	"ResultText" : "You picked option 1",
	#	"ResultAudio" : "File 1"
	#}

	#var example_button_2 = {
	#	"ResponseText" : "Option 2",
	#	"ResultText" : "You picked option 2",
	#	"ResultAudio" : "File 2"
	#}

	#var example_config = {
	#	"button_1" : example_button_1,
	#	"button_2" : example_button_2
	#}

	var button_container_1 = button_container.instance()
	button_container_1.init(questionDictionary["1"], responseDictionary)
	add_child(button_container_1)

	set_fixed_process(true)
	pass


func _fixed_process(delta):

	var mood = get_node("MrYellow").get_mood()

	var node = get_node("ProgressBar")
	node.set_val(mood)

func show_outcome(outcome_object):
	get_node("Subtitle").set_text(outcome_object.result_text)
	
	do_props()
	pass

func do_props():
	var mood = get_node("MrYellow").get_mood()
	if(mood >= 100):
		win()
	elif (mood <= 0):
		lose()
	else:
		ask_question()
	pass

func ask_question():
	randomize()
	var new_id = randi()%11+1
	var button_container = load("res://Scenes/ButtonContainer.tscn")
	var bc_node = get_node("./ButtonContainer")

	var button_container_2 = button_container.instance()
	bc_node.replace_by(button_container_2, false)
	button_container_2.init(questionDictionary[str(new_id)], responseDictionary)
	get_node("Subtitle").set_text(questionDictionary[str(new_id)]["QuestionText"])
	
	add_child(button_container_2)


func win():
	pass
	
func lose():
	pass

func _on_TestButton_pressed():
	ask_question()
	pass # replace with function body
