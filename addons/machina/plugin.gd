@tool
extends EditorPlugin


func _enter_tree() -> void:
	add_custom_type("MachineState", "Node", preload("src/machine_state.gd"), preload("src/icons/state.svg"))
	add_custom_type("Machina", "Node", preload("src/finite-state-machine.gd"), preload("src/icons/fsm.svg"))
	
	
func _exit_tree() -> void:
	remove_custom_type("MachineState")
	remove_custom_type("Machina")
