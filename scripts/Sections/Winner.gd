extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var Player1 = "/root/World/Player1"
var p1
var p2
# Called when the node enters the scene tree for the first time.
func _ready():
	set_visible(false)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(get_tree().get_nodes_in_group("pick up"))
	if get_tree().get_nodes_in_group("pick up") == []:
		set_visible(true)
		if p1 > p2:
			set_text("1 Win")
		elif p1 < p2:
			set_text("2 Win")
		else:
			set_text("Tie")
	pass


func _on_Player2_points(val):
	p2 = val
	pass # Replace with function body.


func _on_Player1_points(val):
	p1 = val
	pass # Replace with function body.
