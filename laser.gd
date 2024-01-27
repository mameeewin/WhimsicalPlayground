extends Area2D

signal hit

func _process(delta):
	position.y -= 7.5


func _on_body_entered(body: CharacterBody2D):
	hit.emit()
