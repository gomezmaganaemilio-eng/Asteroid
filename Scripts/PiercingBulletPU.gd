class_name PiercingBulletPU extends APowerUp
@export var p_bullet_scene: PackedScene
func init() -> void:

	pass

func activate() -> void:
	GameManager.continuos_actions.connect(replace_bullet_for_piercing)
	GameManager.delay_action(stop,5)
	pass

func replace_bullet_for_piercing() -> void:
	for child in GameManager.me.get_children():
		if !(child is ABullet) || child is PircingBullet:continue
		var newPBullet = p_bullet_scene.instantiate() as PircingBullet
		var other = child as ABullet
		GameManager.me.add_child(newPBullet)
		newPBullet.shoot(other.linear_velocity)
		newPBullet.global_position = other.global_position
		other.queue_free()
		print_debug("Changed a Bullet")
	pass
	
func stop() -> void:
	GameManager.continuos_actions.disconnect(replace_bullet_for_piercing)
	queue_free()
	pass
