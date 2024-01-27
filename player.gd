extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var can_move = true

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	position = Globals.player_position_spawn

func _physics_process(delta):
	if can_move == true:
		if Input.is_action_pressed("ui_left") or Input.is_action_just_pressed("ui_right"):
			$AnimationPlayer.play("run")
		if Input.is_action_just_released("ui_left") or Input.is_action_just_released("ui_right"):
			$AnimationPlayer.stop()
		
		if Input.is_action_just_pressed("ui_left"):
			$BodyParts/body.flip_h = true
		if Input.is_action_just_pressed("ui_right"):
			$BodyParts/body.flip_h = false
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	
	if can_move == true:
	# Handle jump.
		if Input.is_action_just_pressed("ui_up") and is_on_floor():
			velocity.y = JUMP_VELOCITY

		# Get the input direction and handle the movement/deceleration.
		# As good practice, you should replace UI actions with custom gameplay actions.
		var direction = Input.get_axis("ui_left", "ui_right")
		if direction:
			velocity.x = direction * SPEED
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)
	else:
		velocity = Vector2.ZERO

	move_and_slide()
