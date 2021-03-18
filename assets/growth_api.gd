extends MeshInstance

var _timer := 0.0


func _process(delta : float) -> void:
	_timer += delta
	var growth := sin(_timer) + 1.0
	get_node("ShellFur").set_shader_param("shape_growth", growth)
