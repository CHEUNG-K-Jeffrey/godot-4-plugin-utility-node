@tool
extends EditorPlugin


func _enter_tree() -> void:
	# Initialization of the plugin goes here.
	add_custom_type("NodeSceneLoader", "Node", preload("node_scene_loader.gd"), preload("res://icon.svg"))
	
func _exit_tree() -> void:
	# Clean-up of the plugin goes here.
	remove_custom_type("NodeSceneLoader")
