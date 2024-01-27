extends CharacterBody2D
const SPEED = 150.0

func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction_x = Input.get_axis("ui_left", "ui_right")
	if direction_x:
		velocity.x = direction_x * SPEED
		if direction_x > 0:
			rotation += 0.1
		else:
			rotation -= 0.1
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	move_and_slide()
