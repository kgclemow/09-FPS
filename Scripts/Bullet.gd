extends Area

var speed = 15
var velocity = Vector3()

func _ready():
	pass

func _start(start_from):
	transform = start_from
	velocity = transform.basis.z * speed

func _physics_process(delta):
	transform.origin += velocity * delta
	
func _on_Timer_timeout():
	queue_free()

