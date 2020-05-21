
extends KinematicBody

# Display this member variable in the editor UI so game 
# designers can tweak rotation speed without changing source
# code
export var speed = 1

# Rotation amount for each axis
var x_rot = 15
var y_rot = 30
var z_rot = 45
# Unit vector of each axis
var x_axis = Vector3(1,0,0)
var y_axis = Vector3(0,1,0)
var z_axis = Vector3(0,0,1)

func _ready():
	# When this node enters the scene, start calling its
	# _process() method for per-frame logic
	set_process(true)
#set_physics_process(true)

func _process(delta):
	var rot = get_rotation()
	rot[1] = speed * delta + rot[1]
	set_rotation(rot)
	
	
	# Get current orientation
#	var xform = get_transform()
	# Rotate current orientation a different amount on every axis
#	xform = xform.rotated(x_axis, x_rot * delta * speed)
#	xform = xform.rotated(Vector3(0,get_translation()[1],0), y_rot * delta * speed)
#	xform = xform.rotated(z_axis, z_rot * delta * speed)
	# Set orientation to rotated-orientation
#	set_transform(xform)



