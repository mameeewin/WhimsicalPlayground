extends Area2D

func _on_body_entered(body: CharacterBody2D):
	$"../AnimationPlayer".play("settingarea6")
	$"../Player/Camera2D".enabled = false
	$"../Camera2D".enabled = true
	$"../Player".can_move = false
	$"../Player".visible = false

func change_to_menu():
	get_tree().change_scene_to_file("res://menu.tscn")
