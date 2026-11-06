class_name Bullet extends RigidBody2D

var life_time:float = 1.5
func _physics_process(delta: float) -> void:
	life_time -= delta
	if life_time <= 0: queue_free() 
	pass
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	body_entered.connect(dmg_asteroid)
	pass

	
func dmg_asteroid(other : RigidBody2D) -> void:
	if !(other is A_Asteroid): return
	(other as A_Asteroid).take_dmg()
	queue_free()
	pass
		
