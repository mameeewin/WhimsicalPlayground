extends Node2D

var happyface = preload("res://happyfaceattack.tscn")
var big_smile = preload("res://BIGGERSMILE.png")
var small_smile = preload("res://happyface.png")
var slider_length = 30

func _on_timer_timeout():
	if randi_range(0, 1) == 1:
		$Happyface.texture = big_smile
	else:
		$Happyface.texture = small_smile
	$Timer.wait_time -= 0.1
	if $Timer.wait_time < 0.25:
		$Timer.wait_time = 0.25
	$AnimationPlayer2.play("HAPPY")
	var happyface_node = happyface.instantiate()
	happyface_node.position = Vector2(randf_range(-153, 153), 453)
	happyface_node.connect("hit", hit)
	add_child(happyface_node)


func _on_timer_2_timeout():
	slider_length -= 1
	if slider_length < 1:
		Globals.player_position_spawn = Vector2(2934, -388)
		get_tree().change_scene_to_file("main.tscn")
	$SliderLength.text = "Length: " + str(slider_length) + " seconds"
	

func hit():
	slider_length += 2
	$SliderLength.text = "Length: " + str(slider_length) + " seconds"
