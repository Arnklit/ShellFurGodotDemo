extends Control

# The viewport is displayed using a TextureRect node instead of a ViewportContainer.
# This allows filtering the texture that's displayed in the root viewport.

# The 3D viewport's scale factor. For instance, 1.0 is full resolution,
# 0.5 is half resolution and 2.0 is double resolution. Higher values look
# sharper but are slower to render. Values above 1 can be used for supersampling
# (SSAA), but filtering must be enabled for this to work.
var scale_factor = 0.50

onready var texture_rect = $TextureRect
onready var viewport = $Viewport

func _ready():
	# Required to change the 3D viewport's size when the window is resized.
	# warning-ignore:return_value_discarded
	viewport.size = get_viewport().size * scale_factor

# Called when the root's viewport size changes (i.e. when the window is resized).
# This is done to handle multiple resolutions without losing quality.
func _root_viewport_size_changed():
	# The viewport is resized depending on the window height.
	# To compensate for the larger resolution, the viewport sprite is scaled down.
	viewport.size = get_viewport().size * scale_factor
