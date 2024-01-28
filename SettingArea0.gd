extends Area2D

func _on_body_entered(body: CharacterBody2D):
	Globals.camera_zoom = Vector2(3, 3)
	$"../AnimationPlayer".play("settingarea0")
