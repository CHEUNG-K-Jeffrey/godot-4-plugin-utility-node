@tool
extends EditorPlugin


func _enter_tree() -> void:
	# Initialization of the plugin goes here.
	add_custom_type("NodeProxy", "Node", preload("node_proxy.gd"), preload("res://icon.svg"))
	add_custom_type("Node2DProxy", "Node2D", preload("node_proxy.gd"), preload("res://icon.svg"))
	add_custom_type("Node3DProxy", "Node3D", preload("node_proxy.gd"), preload("res://icon.svg"))

func _exit_tree() -> void:
	# Clean-up of the plugin goes here.
	remove_custom_type("NodeProxy")
	remove_custom_type("Node2DProxy")
	remove_custom_type("Node3DProxy")
