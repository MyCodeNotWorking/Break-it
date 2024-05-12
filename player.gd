extends CharacterBody2D

const SPEED = 1000.0
const JUMP_VELOCITY = -1000.0

var gravity = 3000
var jumps = 2

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
	
	if is_on_floor():
		jumps = 2

	if Input.is_action_just_pressed("ui_up") and jumps > 0:
		jumps -= 1
		velocity.y = JUMP_VELOCITY
		
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = -(direction * SPEED)
	
	move_and_slide()
	
	'''
	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)
		var c = (collision.get_collider() as StaticBody2D).get_node("CollisionShape2D")
	'''
