class_name Ship extends RigidBody2D


#los layers son los que mencionan a un objeto en especifico como funcionar, es decir que el 1 es la nave, el 2 es la bala y el 3 el asteroide
#las mascaras son con quienes quieres interactuar, la nave quiere con el asteroide así que solo 3, pero el asteroide con la bala y la nave asi que es 1 y 2
@export_range(200,800, 5) var speed : float = 600

@export_category("Shooting")
@export var bullet: PackedScene #export es como el serializefield
@export var pivot: Node2D
# start
func _ready() -> void:
	pass 

#Update
func _process(delta: float) -> void:
	pass
	#fixed update
func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("Shoot"):
		_shoot()
	var direction: Vector2 = Input.get_vector("Left","Right","Up","Down").normalized() #var le da direccion para darle una direccion
	linear_velocity = direction * speed
	pass

func _take_dmg() -> void:
	print_debug("Ship destroyed")
	queue_free()
	pass
	
func _shoot() -> void:
	var bulletobjt = (bullet.instantiate()) #as Bullet??????????
	get_parent().add_child(bulletobjt)
	bulletobjt.global_position = pivot.global_position
	bulletobjt.linear_velocity = Vector2.UP * 1000
	pass
