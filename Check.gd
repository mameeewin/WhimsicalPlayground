extends Area2D


func _on_body_entered(body:CharacterBody2D):
	$"../Timer".start()


	


func _on_timer_timeout():
	$"..".gravity_scale = 1
