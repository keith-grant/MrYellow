extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func setTexture(texture):
	var coll_tex = "res://Art/PNGs/" + texture
	var res = load(coll_tex)
	set_texture(res)

func setPosition(x, y):
	set_global_pos(Vector2(x, y))