extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var move = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if move:
		self.rect_position.x += delta*500
	if self.rect_position.x >= 80:		
		self.rect_position.x = 80
		move = false

func reset():
	self.rect_position.x = -200

func _on_Timer_timeout():
	move = true
