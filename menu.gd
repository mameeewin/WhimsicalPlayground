extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	Globals.player_position_spawn = Vector2(415, 122)
	Globals.camera_zoom = Vector2(1.5, 1.5)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	get_tree().change_scene_to_file("res://main.tscn")
