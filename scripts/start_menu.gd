extends CanvasLayer

signal statge_select

export var stage1_path = "res://scence//Sections//single_stage1.tscn"
export var double_mode_path = "res://scence//Sections//double_stage1.tscn"
var stage_button_left = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$bgm_player.play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_single_start_pressed():
	$stage1_start/Timer.start()
	$stage2_start/Timer.start()
	pass # Replace with function body.


func _on_stage1_start_pressed():
	var stage1 = load((stage1_path))
	get_tree().change_scene_to(stage1)
	pass # Replace with function body.


func _on_quit_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_double_start_pressed():
	var double_mode = load((double_mode_path))
	get_tree().change_scene_to(double_mode)
	pass # Replace with function body.
