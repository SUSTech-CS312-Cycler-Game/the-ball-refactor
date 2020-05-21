extends KinematicBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var angle_velocity = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
func _physics_process(delta):
	var r = get_rotation()
	r.y+=PI*angle_velocity*delta/180
	set_rotation(r)
	$Field.gravity_vec=-get_global_transform().basis.z

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
