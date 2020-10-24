extends Spatial

export var fur_node : NodePath
onready var _label = get_node("Viewport/Label")
onready var _fur_node = get_node(fur_node)

func _process(_delta: float) -> void:
	_label.text = "LOD: " + str(_fur_node.get_current_LOD())
