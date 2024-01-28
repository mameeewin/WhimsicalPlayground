extends Area2D


func _on_body_entered(body: CharacterBody2D):
	$"../AnimationPlayer".play("RabbitAreaEnter")
	
	


func _on_body_exited(body: CharacterBody2D):
	$"../AnimationPlayer".play("RabbitAreaExit")
