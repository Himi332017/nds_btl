extends KinematicBody

var state_machine 

func _ready():
	state_machine = $AnimationTree.get("parameters/playback")
	
func _physics_process(delta):
	var current = state_machine.get_current_node()
	if Input.is_action_just_pressed("ui_accept"):
		state_machine.travel("hamieng")
	
