extends CharacterBody2D

@export var move_spd:float = 200
@export var jump_force:float = 400
@export var gravity:float = 10

func _process(delta):
	velocity.x = Input.get_axis("P1_left","P1_right")*move_spd
	if is_on_floor() and Input.is_action_just_pressed("P1_jump"): velocity.y = -jump_force

func _physics_process(delta):
	velocity += Vector2.DOWN*gravity
	move_and_slide()
