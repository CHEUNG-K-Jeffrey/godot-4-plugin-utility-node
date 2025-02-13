@tool
extends Node

@export_file var path: String

var node

func _ready():
	if !Engine.is_editor_hint() || !path:
		return
	var scene = load(path)
	node = scene.instantiate()
	add_child(node)
