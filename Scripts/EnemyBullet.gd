extends Area

var speed = 10
var damage = 1
var velocity = Vector3()

func _ready():
	pass

func _start(start_from):
	transform = start_from
	velocity = transform.basis.x * speed

func _physics_process(delta):
	transform.origin += velocity * delta

func _on_EnemyBullet_body_entered(body):
	if body is KinematicBody:
		queue_free()
	if body is RigidBody:
		queue_free()
	if body is StaticBody:
		queue_free()
	if body.name == "Player":
		body.take_damage(damage)
		queue_free()

func _on_Timer_timeout():
	queue_free()
