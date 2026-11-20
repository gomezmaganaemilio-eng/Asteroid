class_name Bullet extends ABullet
@export var shoo1: AnimatedSprite2D

func on_physics_process(delta: float) -> void:
	shoo1.play()
	pass
	
func on_asteroid_collision(asteroid : A_Asteroid):
	queue_free()
	pass

		
