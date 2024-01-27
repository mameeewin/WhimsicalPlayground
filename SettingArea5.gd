extends Area2D

func _on_body_entered(body: CharacterBody2D):
	$"../AnimationPlayer".play("settingarea5")
func slider_scene():
	get_tree().change_scene_to_file("res://slider_scene.tscn")
