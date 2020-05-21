extends StaticBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var velocity=0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _process(delta):
	constant_linear_velocity = velocity*get_global_transform().basis.x
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
