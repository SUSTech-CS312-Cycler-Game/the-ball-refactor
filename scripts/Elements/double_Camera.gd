
extends Camera

# Initial offset of the camera
var camera_offset
# The node path of the node the camera will follow
var node_to_follow_1 = "/root/World/Player1"
var node_to_follow_2 = "/root/World/Player2"
func _ready():
	# Compute the initial offset of the camera (for later use)
	var player_position_1 = get_node(node_to_follow_1).get_translation()
	var player_position_2 = get_node(node_to_follow_2).get_translation()
	var camera_position = get_translation()
	camera_offset = camera_position - (player_position_1 + player_position_2)/2

	# When this node enters the scene, start calling its
	# _process() method for per-frame logic
	set_process(true)

func _process(delta):
	# Set the camera to be wherever the follow-node is and then
	# apply the initial offset so the camera's relative position
	# is constant
	var player_position_1 = get_node(node_to_follow_1).get_translation()
	var player_position_2 = get_node(node_to_follow_2).get_translation()
	set_translation( (player_position_1 + player_position_2)/2 + camera_offset )


